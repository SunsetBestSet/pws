return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 16,
  height = 13,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 12,
  nextobjectid = 18,
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
    },
    {
      name = "overworld0",
      firstgid = 1001,
      filename = "overworld0.tsx.tmx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 46,
      image = "overworld0.png",
      imagewidth = 740,
      imageheight = 676,
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
      tilecount = 1932,
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
      width = 16,
      height = 13,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 2014, 2014, 2014, 41, 0,
        0, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 2014, 2014, 2014, 41, 0,
        0, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 0,
        0, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 0,
        0, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 0,
        0, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 0,
        0, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 0,
        0, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 0,
        0, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 0,
        0, 0, 41, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 2,
      name = "wall",
      x = 0,
      y = 0,
      width = 16,
      height = 13,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        588, 248, 246, 379, 248, 246, 379, 248, 246, 379, 248, 246, 379, 248, 246, 588,
        588, 288, 286, 419, 288, 286, 419, 288, 286, 419, 288, 286, 419, 288, 286, 588,
        588, 328, 326, 459, 328, 326, 459, 328, 326, 459, 328, 326, 459, 328, 326, 588,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 588,
        588, 588, 0, 0, 588, 588, 588, 588, 588, 588, 588, 588, 588, 588, 588, 588
      }
    },
    {
      type = "tilelayer",
      id = 8,
      name = "lights",
      x = 0,
      y = 0,
      width = 16,
      height = 13,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 294, 294, 0, 0, 0, 0, 294, 294, 0, 0, 0, 0, 294, 294, 0,
        0, 334, 334, 0, 0, 0, 0, 334, 334, 0, 0, 0, 0, 334, 334, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 3,
      name = "carpet",
      x = 0,
      y = 0,
      width = 16,
      height = 13,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 281, 282, 282, 282, 282, 282, 283, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 321, 322, 322, 322, 322, 322, 323, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 321, 322, 322, 322, 322, 322, 323, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 361, 362, 362, 362, 362, 362, 363, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 4,
      name = "bed",
      x = 0,
      y = 0,
      width = 16,
      height = 13,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 61, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 101, 102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 141, 142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 5,
      name = "furniture",
      x = 0,
      y = 0,
      width = 16,
      height = 13,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 488, 0, 0, 0, 489, 484, 486, 534, 535, 536, 0, 456, 0, 487, 0,
        0, 528, 0, 0, 0, 529, 524, 526, 574, 575, 576, 0, 496, 0, 527, 0,
        0, 568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 567, 0,
        0, 608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 607, 0,
        0, 488, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 487, 0,
        0, 528, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 527, 0,
        0, 568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 567, 0,
        0, 608, 0, 0, 0, 0, 177, 54, 55, 56, 179, 0, 0, 0, 607, 0,
        0, 489, 0, 0, 0, 0, 217, 134, 135, 136, 219, 0, 0, 0, 489, 0,
        0, 529, 0, 0, 0, 0, 257, 0, 0, 0, 259, 0, 0, 0, 529, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 6,
      name = "chair",
      x = 0,
      y = 0,
      width = 16,
      height = 13,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 178, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 218, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 258, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 7,
      name = "decorations",
      x = 0,
      y = 0,
      width = 16,
      height = 13,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 766, 767, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 806, 807, 0, 0, 0, 0, 569, 570, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 251, 657, 658, 0, 0, 0, 531, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 530, 0, 0, 0, 451, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 416, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 410, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 490, 0,
        0, 0, 0, 0, 0, 0, 0, 415, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 452, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 417, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      id = 9,
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
          name = "player_spawn",
          type = "",
          shape = "rectangle",
          x = 41.3277,
          y = 166.748,
          width = 12.3333,
          height = 13,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "hallway_door1",
          type = "",
          shape = "rectangle",
          x = 32.474,
          y = 202.103,
          width = 31.1191,
          height = 5.13877,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/room_hallway.lua"
          }
        },
        {
          id = 8,
          name = "book1",
          type = "",
          shape = "rectangle",
          x = 131.958,
          y = 83.1277,
          width = 7.0971,
          height = 9.7441,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "book2",
          type = "",
          shape = "rectangle",
          x = 196.903,
          y = 163.188,
          width = 7.406,
          height = 10.112,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "book3",
          type = "",
          shape = "rectangle",
          x = 116.282,
          y = 130.813,
          width = 6.862,
          height = 10.112,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "leiko_bed",
          type = "",
          shape = "rectangle",
          x = 31.884,
          y = 46.9461,
          width = 31.4151,
          height = 48.005,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "leiko_spawn",
          type = "",
          shape = "rectangle",
          x = 163.667,
          y = 68,
          width = 15.6667,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "cauldron",
          type = "",
          shape = "rectangle",
          x = 193.125,
          y = 49.875,
          width = 14.25,
          height = 13.875,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 11,
      name = "custom_collisions",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["collidable"] = true
      },
      objects = {
        {
          id = 13,
          name = "",
          type = "",
          shape = "rectangle",
          x = 145.136,
          y = 46.6023,
          width = 14,
          height = 22.3636,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96.3636,
          y = 151.455,
          width = 15.2727,
          height = 29.8182,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "",
          type = "",
          shape = "rectangle",
          x = 159.818,
          y = 151.636,
          width = 16,
          height = 29.6364,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
