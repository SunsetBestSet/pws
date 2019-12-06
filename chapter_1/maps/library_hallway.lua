return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 6,
  height = 20,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 7,
  nextobjectid = 7,
  properties = {},
  tilesets = {
    {
      name = "inner",
      firstgid = 1,
      filename = "inner1.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 40,
      image = "inner.png",
      imagewidth = 640,
      imageheight = 400,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      terrains = {},
      tilecount = 1000,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 3,
      name = "floor",
      x = 0,
      y = 0,
      width = 6,
      height = 20,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 1, 1, 1, 1, 0,
        1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0,
        0, 0, 1, 1, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 4,
      name = "carpet",
      x = 0,
      y = 0,
      width = 6,
      height = 20,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        572, 572, 572, 572, 572, 572,
        652, 652, 691, 692, 652, 652,
        0, 0, 611, 613, 0, 0,
        0, 0, 611, 613, 0, 0,
        0, 0, 611, 613, 0, 0,
        0, 0, 611, 613, 0, 0,
        0, 0, 611, 613, 0, 0,
        0, 0, 611, 613, 0, 0,
        0, 0, 611, 613, 0, 0,
        0, 0, 611, 613, 0, 0,
        0, 0, 611, 613, 0, 0,
        572, 572, 611, 613, 0, 0,
        652, 652, 611, 613, 0, 0,
        0, 0, 611, 613, 0, 0,
        0, 0, 611, 613, 0, 0,
        0, 0, 611, 613, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 1,
      name = "wall",
      x = 0,
      y = 0,
      width = 6,
      height = 20,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        588, 378, 248, 246, 378, 588,
        588, 418, 288, 286, 418, 588,
        588, 458, 328, 326, 458, 588,
        588, 0, 0, 0, 0, 588,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        588, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 588,
        0, 0, 2684355251, 0, 0, 588,
        0, 0, 691, 0, 0, 588,
        588, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 588,
        588, 588, 0, 0, 588, 588
      }
    },
    {
      type = "objectgroup",
      id = 5,
      name = "Objects",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 1,
          name = "leiko_hallway",
          type = "",
          shape = "rectangle",
          x = 90.125,
          y = 63.875,
          width = 5.75,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/leiko_hallway.lua"
          }
        },
        {
          id = 4,
          name = "library_door",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 63.75,
          width = 6,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/library.lua"
          }
        },
        {
          id = 5,
          name = "main_hallway",
          type = "",
          shape = "rectangle",
          x = 31.75,
          y = 315,
          width = 32.5,
          height = 4.75,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/main_hallway.lua"
          }
        },
        {
          id = 6,
          name = "player_spawn",
          type = "",
          shape = "rectangle",
          x = 42.6667,
          y = 99,
          width = 13.6667,
          height = 13,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 2,
      name = "custom_collisions",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {}
    }
  }
}
