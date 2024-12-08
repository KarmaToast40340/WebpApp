from PIL import Image
import sys
import os

def convert_webp_to_png(file_path):
    if not file_path.lower().endswith('.webp'):
        print("Le fichier sélectionné n'est pas un fichier .webp.")
        return
    
    output_path = os.path.splitext(file_path)[0] + '.png'
    
    try:
        with Image.open(file_path) as img:
            img.save(output_path, 'PNG')
        print(f"Conversion réussie : {output_path}")
    except Exception as e:
        print(f"Erreur lors de la conversion : {e}")

if __name__ == "__main__":
    if len(sys.argv) > 1:
        for file in sys.argv[1:]:
            convert_webp_to_png(file)
    else:
        print("Aucun fichier fourni.")
