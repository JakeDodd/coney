#include "raylib.h"

typedef struct Circle {
  int x;
  int y;
  int speed;
} Circle;

void updateCirclePosition(Circle *circle) {
  if (IsKeyDown(KEY_W)) {
    circle->y -= circle->speed;
  }
  if (IsKeyDown(KEY_A)) {
    circle->x -= circle->speed;
  }
  if (IsKeyDown(KEY_S)) {
    circle->y += circle->speed;
  }
  if (IsKeyDown(KEY_D)) {
    circle->x += circle->speed;
  }
}

int main() {

  // Init window
  InitWindow(1000, 666, "myWindow");
  SetTargetFPS(60);

  Circle player = {.x = 100, .y = 100, .speed = 5};

  // game loop
  while (!WindowShouldClose()) {

    // All drawing happens below
    BeginDrawing();

    ClearBackground(SKYBLUE);

    updateCirclePosition(&player);
    DrawCircle(player.x, player.y, 20, RAYWHITE);

    EndDrawing();
  }

  CloseWindow();
  return 0;
}
