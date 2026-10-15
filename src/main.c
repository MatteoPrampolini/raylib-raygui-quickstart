#include "raylib.h"

#define RAYGUI_IMPLEMENTATION
#include "raygui.h"

int main(void)
{
    InitWindow(800, 450, "raylib + raygui");
    SetTargetFPS(60);

    int counter = 0;

    while (!WindowShouldClose())
    {
        BeginDrawing();

        ClearBackground(RAYWHITE);

        DrawText("Hello, raylib!", 30, 30, 24, DARKGRAY);

        if (GuiButton((Rectangle){30, 100, 150, 40}, "Click me"))
        {
            counter++;
        }

        DrawText(TextFormat("Clicks: %d", counter),
                 30, 160, 20, DARKGRAY);

        EndDrawing();
    }

    CloseWindow();
    return 0;
}
