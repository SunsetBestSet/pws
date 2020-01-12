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
  nextlayerid = 17,
  nextobjectid = 21,
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
    },
    {
      name = "inner",
      firstgid = 1001,
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
      firstgid = 2001,
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
      id = 3,
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
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1001, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1001, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1001, 1001, 1001, 1001, 1001, 1001, 1001, 1, 1, 1, 1, 1, 1, 1, 1, 1001, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        0, 1001, 1001, 1001, 1001, 1001, 1001, 1001, 1001, 1001, 1001, 1001, 1001, 1001, 1001, 1001, 1001, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 5,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        571, 1572, 1572, 1572, 1572, 1572, 1572, 1572, 1572, 1572, 1572, 1572, 1572, 1572, 1572, 1572, 1572, 1572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 572, 573,
        651, 1652, 1652, 1652, 1652, 1652, 1652, 1652, 1652, 1652, 1652, 1652, 1652, 1652, 1652, 1652, 1652, 1652, 652, 652, 652, 652, 652, 652, 652, 652, 652, 652, 652, 652, 652, 652, 652, 653,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 12,
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
        588, 248, 246, 247, 248, 246, 247, 248, 246, 247, 248, 246, 247, 248, 246, 247, 248, 246, 247, 248, 246, 247, 248, 420, 421, 422, 420, 421, 422, 246, 247, 248, 246, 588,
        588, 288, 286, 287, 288, 286, 287, 288, 286, 287, 288, 286, 287, 288, 286, 287, 288, 286, 287, 288, 286, 287, 288, 460, 461, 462, 460, 461, 462, 286, 287, 288, 286, 588,
        588, 328, 326, 327, 328, 326, 327, 328, 326, 327, 328, 326, 327, 328, 326, 327, 328, 326, 327, 328, 326, 327, 328, 500, 501, 502, 500, 501, 502, 326, 327, 328, 326, 588,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 588,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        1588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 588,
        1588, 1588, 1588, 1588, 1588, 1588, 1588, 1588, 1588, 1588, 1588, 1588, 1588, 1588, 1588, 1588, 1588, 1588, 588, 588, 588, 588, 588, 588, 588, 588, 588, 588, 588, 588, 588, 588, 588, 588
      }
    },
    {
      type = "tilelayer",
      id = 13,
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
        0, 0, 0, 0, 0, 0, 0, 168, 169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 168, 169, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 208, 209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 208, 209, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 14,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 768, 769, 770, 646, 647, 648, 771, 772, 773, 845, 846, 847, 0, 540, 0, 0, 540, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 808, 809, 810, 686, 687, 688, 811, 812, 813, 885, 886, 887, 0, 580, 0, 0, 580, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 489, 0, 0, 0, 0, 489, 848, 849, 850, 726, 727, 728, 851, 852, 853, 0, 545, 546, 0, 0, 0, 0, 0, 0, 545, 546, 0, 0, 0,
        0, 0, 0, 0, 0, 529, 0, 0, 0, 0, 529, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 585, 586, 0, 0, 0, 0, 0, 0, 585, 586, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 15,
      name = "Tilelaag 6",
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
        0, 0, 0, 0, 550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 537, 0, 0, 0, 0, 537, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 590, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 577, 0, 0, 0, 0, 577, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 16,
      name = "sdfsdf",
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
        0, 0, 0, 0, 490, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      id = 7,
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
          name = "player_spawn2",
          type = "",
          shape = "rectangle",
          x = 120.128,
          y = 66.8251,
          width = 15.3333,
          height = 13,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "leiko_door",
          type = "",
          shape = "rectangle",
          x = 113.249,
          y = 47.8139,
          width = 29.4092,
          height = 7.1444,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/leiko_room1.lua"
          }
        },
        {
          id = 6,
          name = "infirmary_hallway",
          type = "",
          shape = "rectangle",
          x = 537.311,
          y = 63.721,
          width = 6.4299,
          height = 31.6204,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/infirmary_hallway.lua"
          }
        },
        {
          id = 8,
          name = "library_hallway",
          type = "",
          shape = "rectangle",
          x = -0.125,
          y = 63.875,
          width = 6.25,
          height = 32.125,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/library_hallway.lua"
          }
        },
        {
          id = 9,
          name = "kana_door",
          type = "",
          shape = "rectangle",
          x = 401.667,
          y = 48,
          width = 29,
          height = 4.66667,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/kanaroom.lua"
          }
        },
        {
          id = 10,
          name = "player_spawn3",
          type = "",
          shape = "rectangle",
          x = 409.333,
          y = 64,
          width = 15.3333,
          height = 13.6667,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "player_spawn1",
          type = "",
          shape = "rectangle",
          x = 21.75,
          y = 73,
          width = 13.6667,
          height = 12.6667,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 13,
          name = "player_spawn4",
          type = "",
          shape = "rectangle",
          x = 510.583,
          y = 73,
          width = 12.6667,
          height = 12.6667,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "fam",
          type = "",
          shape = "rectangle",
          x = 236.5,
          y = 47.5,
          width = 22.5,
          height = 5,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "moon",
          type = "",
          shape = "rectangle",
          x = 283.25,
          y = 48.25,
          width = 25,
          height = 4.75,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "old",
          type = "",
          shape = "rectangle",
          x = 189.5,
          y = 48,
          width = 21,
          height = 3.75,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 9,
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
          id = 14,
          name = "",
          type = "",
          shape = "rectangle",
          x = 367.667,
          y = 39.6667,
          width = 16.3333,
          height = 18.3333,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "",
          type = "",
          shape = "rectangle",
          x = 448,
          y = 40.6667,
          width = 15.6667,
          height = 16.6667,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "",
          type = "",
          shape = "rectangle",
          x = 63,
          y = 36.6667,
          width = 16.6667,
          height = 19,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
