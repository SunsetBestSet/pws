return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 34,
  height = 8,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 10,
  nextobjectid = 26,
  properties = {},
  tilesets = {
    {
      name = "inner",
      firstgid = 1,
      filename = "indoor.tsx.tmx",
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
      id = 1,
      name = "floor",
      x = 0,
      y = 0,
      width = 34,
      height = 8,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 4,
      name = "carpet",
      x = 0,
      y = 0,
      width = 34,
      height = 8,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 611, 613, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 611, 613, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 611, 613, 0, 0, 0, 0,
        572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572,
        652, 652, 652, 652, 691, 692, 652, 652, 652, 652, 652, 691, 692, 652, 652, 652, 652, 652, 652, 652, 652, 691, 692, 652, 652, 652, 652, 652, 691, 692, 652, 652, 652, 652,
        0, 0, 0, 0, 611, 613, 0, 0, 0, 0, 0, 611, 613, 0, 0, 0, 0, 0, 0, 0, 0, 611, 613, 0, 0, 0, 0, 0, 611, 613, 0, 0, 0, 0,
        0, 0, 0, 0, 611, 613, 0, 0, 0, 0, 0, 611, 613, 0, 0, 0, 0, 0, 0, 0, 0, 611, 613, 0, 0, 0, 0, 0, 611, 613, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 3,
      name = "wall",
      x = 0,
      y = 0,
      width = 34,
      height = 8,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        588, 248, 246, 247, 248, 246, 247, 248, 246, 379, 248, 246, 379, 248, 246, 247, 248, 246, 247, 248, 246, 379, 248, 246, 379, 248, 246, 247, 248, 246, 247, 248, 246, 588,
        588, 288, 286, 287, 288, 286, 287, 288, 286, 419, 288, 286, 419, 288, 286, 287, 288, 286, 287, 288, 286, 419, 288, 286, 419, 288, 286, 287, 288, 286, 287, 288, 286, 588,
        588, 328, 326, 327, 328, 326, 327, 328, 326, 459, 328, 326, 459, 328, 326, 327, 328, 326, 327, 328, 326, 459, 328, 326, 459, 328, 326, 327, 328, 326, 327, 328, 326, 588,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 588,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 588,
        588, 588, 588, 588, 0, 0, 588, 588, 588, 588, 588, 0, 0, 588, 588, 588, 588, 588, 588, 588, 588, 0, 0, 588, 588, 588, 588, 588, 0, 0, 588, 588, 588, 588
      }
    },
    {
      type = "tilelayer",
      id = 8,
      name = "lights",
      x = 0,
      y = 0,
      width = 34,
      height = 8,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 294, 0, 0, 294, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 294, 0, 0, 294, 0, 0, 0,
        0, 0, 0, 334, 0, 0, 334, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 334, 0, 0, 334, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 5,
      name = "door",
      x = 0,
      y = 0,
      width = 34,
      height = 8,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 168, 169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 603, 604, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 168, 169, 0, 0, 0, 0,
        0, 0, 0, 0, 208, 209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 683, 684, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 208, 209, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 7,
      name = "deco",
      x = 0,
      y = 0,
      width = 34,
      height = 8,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 489, 0, 489, 0, 0, 0, 489, 0, 0, 0, 0, 489, 0, 0, 0, 489, 0, 489, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 529, 0, 529, 0, 0, 0, 529, 0, 0, 0, 0, 529, 0, 0, 0, 529, 0, 529, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 9,
      name = "knight",
      x = 0,
      y = 0,
      width = 34,
      height = 8,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 455, 0, 0, 455, 0, 0, 455, 0, 0, 455, 0, 0, 455, 0, 0, 455, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 495, 0, 0, 495, 0, 0, 495, 0, 0, 495, 0, 0, 495, 0, 0, 495, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      id = 2,
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
          name = "library_hallway",
          type = "",
          shape = "rectangle",
          x = 64.5,
          y = 48,
          width = 29.75,
          height = 4,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/library_hallway.lua"
          }
        },
        {
          id = 2,
          name = "kitchen_door",
          type = "",
          shape = "rectangle",
          x = 0.25,
          y = 63.75,
          width = 5.5,
          height = 31.75,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/kitchen.lua"
          }
        },
        {
          id = 3,
          name = "dining_door",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 121.5,
          width = 32,
          height = 6.5,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/dining_room.lua"
          }
        },
        {
          id = 4,
          name = "infirmary_hallway",
          type = "",
          shape = "rectangle",
          x = 449.25,
          y = 47.5,
          width = 29,
          height = 4.5,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/infirmary_hallway.lua"
          }
        },
        {
          id = 5,
          name = "garden_door",
          type = "",
          shape = "rectangle",
          x = 256.667,
          y = 32.25,
          width = 30.3333,
          height = 20.4167,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/garden.lua"
          }
        },
        {
          id = 6,
          name = "player_spawn",
          type = "",
          shape = "rectangle",
          x = 457.333,
          y = 70,
          width = 12.3333,
          height = 11.3333,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "player_spawn1",
          type = "",
          shape = "rectangle",
          x = 74.25,
          y = 66.5,
          width = 11.75,
          height = 10.75,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "player_spawn2",
          type = "",
          shape = "rectangle",
          x = 20.5,
          y = 75,
          width = 12.5,
          height = 11.75,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "player_spawn3",
          type = "",
          shape = "rectangle",
          x = 74,
          y = 97.5,
          width = 11.75,
          height = 10.25,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "player_spawn4",
          type = "",
          shape = "rectangle",
          x = 264.909,
          y = 78.1818,
          width = 13.8182,
          height = 12,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "left_door",
          type = "",
          shape = "rectangle",
          x = 175.636,
          y = 121.091,
          width = 32.1818,
          height = 6.72727,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/left_stairs.lua"
          }
        },
        {
          id = 13,
          name = "right_door",
          type = "",
          shape = "rectangle",
          x = 335.818,
          y = 121.273,
          width = 32.1818,
          height = 6.36364,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/right_stairs.lua"
          }
        },
        {
          id = 14,
          name = "player_spawn5",
          type = "",
          shape = "rectangle",
          x = 185.455,
          y = 93.2727,
          width = 12.3636,
          height = 12.1818,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "player_spawn6",
          type = "",
          shape = "rectangle",
          x = 344.364,
          y = 93.0909,
          width = 13.0909,
          height = 13.4545,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 22,
          name = "retainer_door",
          type = "",
          shape = "rectangle",
          x = 447.75,
          y = 122,
          width = 32,
          height = 5.5,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/retainer_room.lua"
          }
        },
        {
          id = 23,
          name = "player_spawn7",
          type = "",
          shape = "rectangle",
          x = 458.25,
          y = 96.25,
          width = 12.5,
          height = 12.5,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 24,
          name = "queen_door",
          type = "",
          shape = "rectangle",
          x = 538.909,
          y = 63.8182,
          width = 4.90909,
          height = 32.1818,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/queen_room.lua"
          }
        },
        {
          id = 25,
          name = "player_spawn8",
          type = "",
          shape = "rectangle",
          x = 510.182,
          y = 76,
          width = 12,
          height = 11.4545,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 6,
      name = "custom_collisions",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 16,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 32,
          width = 15.75,
          height = 23.75,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192.25,
          y = 31.75,
          width = 15.5,
          height = 23.5,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "",
          type = "",
          shape = "rectangle",
          x = 239.5,
          y = 32,
          width = 16.5,
          height = 23.25,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "",
          type = "",
          shape = "rectangle",
          x = 287.75,
          y = 32,
          width = 16.25,
          height = 23.25,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "",
          type = "",
          shape = "rectangle",
          x = 336,
          y = 32,
          width = 15.75,
          height = 23.5,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 21,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384.25,
          y = 32,
          width = 15.75,
          height = 23.5,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
