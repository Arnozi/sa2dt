import sys
import subprocess
import time
from pathlib import Path

def try_communicate(proc: subprocess.Popen, value: str | bytes) -> None:
    proc.stdin.write(value)
    
    
def compile_game(project_path: Path) -> None:
    exe_path = project_path / "AdvanceBuild.exe"
    proj_path = project_path / "Sonic Advance (U) [!].saproj"
    game_path = project_path / "Sonic Advance (U) [!].gba"
    
    print(exe_path, proj_path, game_path, sep="\n")
    
    with (subprocess.Popen([str(exe_path)], text=True, shell=True, stdin=subprocess.PIPE)) as proc:
        try_communicate(proc, str(proj_path) + "\n")
        try_communicate(proc, str(game_path) + "\n")

if __name__ == "__main__":
    compile_game(Path.cwd())