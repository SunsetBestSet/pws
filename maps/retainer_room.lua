return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 12,
  height = 10,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 10,
  nextobjectid = 6,
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
      id = 2,
      name = "floor",
      x = 0,
      y = 0,
      width = 12,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 0,
        0, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 0,
        0, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 0,
        0, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 0,
        0, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 0,
        0, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 6,
      name = "carpet",
      x = 0,
      y = 0,
      width = 12,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 571, 572, 572, 572, 572, 573, 0, 0, 0,
        0, 0, 0, 611, 612, 612, 612, 612, 613, 0, 0, 0,
        0, 0, 0, 651, 652, 652, 652, 652, 653, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 1,
      name = "wall",
      x = 0,
      y = 0,
      width = 12,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        588, 247, 248, 246, 247, 248, 246, 247, 248, 246, 247, 588,
        588, 287, 288, 286, 287, 288, 286, 287, 288, 286, 287, 588,
        588, 327, 328, 326, 327, 328, 326, 327, 328, 326, 327, 588,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 588,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 588,
        588, 588, 588, 588, 588, 588, 588, 588, 588, 588, 588, 588
      }
    },
    {
      type = "tilelayer",
      id = 5,
      name = "door",
      x = 0,
      y = 0,
      width = 12,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 168, 169, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 208, 209, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 3,
      name = "furniture",
      x = 0,
      y = 0,
      width = 12,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 180, 0, 0, 57, 0, 0, 57, 0, 0, 60, 0,
        0, 220, 0, 0, 97, 0, 0, 97, 0, 0, 100, 0,
        0, 260, 0, 0, 137, 0, 0, 137, 0, 0, 140, 0,
        0, 488, 0, 0, 0, 0, 0, 0, 0, 0, 487, 0,
        0, 528, 0, 0, 0, 0, 0, 0, 0, 0, 527, 0,
        0, 568, 0, 0, 0, 542, 543, 0, 0, 0, 567, 0,
        0, 608, 0, 0, 0, 582, 583, 0, 0, 0, 607, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 9,
      name = "decor",
      x = 0,
      y = 0,
      width = 12,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 404, 0, 0, 403, 0, 0, 0, 0, 767, 690, 0,
        0, 444, 569, 570, 443, 0, 0, 0, 0, 807, 730, 0,
        0, 0, 0, 455, 0, 0, 0, 0, 455, 550, 0, 0,
        0, 0, 0, 495, 0, 0, 0, 0, 495, 590, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
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
          id = 2,
          name = "main_hallway",
          type = "",
          shape = "rectangle",
          x = 81.4545,
          y = 47.6364,
          width = 29.4545,
          height = 5.45455,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/main_hallway.lua"
          }
        },
        {
          id = 3,
          name = "player_spawn",
          type = "",
          shape = "rectangle",
          x = 88,
          y = 74.9091,
          width = 15.4545,
          height = 14.5455,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 127.667,
          y = 32,
          width = 15.6667,
          height = 23.3333,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48.3333,
          y = 31.6667,
          width = 15.6667,
          height = 23.6667,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 8,
      name = "custom_collisions",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144.671,
          y = 38.8024,
          width = 15.8084,
          height = 14.8503,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
