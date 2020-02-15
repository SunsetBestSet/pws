return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 10,
  height = 10,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 16,
  nextobjectid = 9,
  properties = {},
  tilesets = {
    {
      name = "overworld0",
      firstgid = 1,
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
    },
    {
      name = "overworld2",
      firstgid = 1933,
      filename = "overworld2.tsx.tmx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 23,
      image = "overworld2.png",
      imagewidth = 368,
      imageheight = 208,
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
      tilecount = 299,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 5,
      name = "floor",
      x = 0,
      y = 0,
      width = 10,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        1475, 1475, 1612, 0, 0, 1612, 1612, 1612, 1612, 1612,
        1475, 1475, 1612, 0, 0, 1612, 1612, 1612, 1612, 1612,
        1475, 1475, 1612, 0, 0, 1612, 1612, 1612, 1612, 1612,
        1475, 1475, 1612, 0, 0, 1612, 1612, 1612, 1612, 1612,
        1475, 1475, 1612, 0, 0, 1612, 1612, 1612, 1612, 1612,
        1475, 1475, 1612, 0, 0, 2055, 1612, 1612, 1612, 1612,
        1475, 1475, 1612, 0, 0, 2055, 1612, 1612, 1612, 1612,
        1475, 1612, 1612, 0, 0, 2055, 1612, 1612, 1612, 1612,
        1612, 1612, 1612, 0, 0, 2055, 2055, 1612, 1612, 1612,
        1612, 1612, 1612, 0, 0, 1612, 1612, 1612, 1612, 1612
      }
    },
    {
      type = "tilelayer",
      id = 4,
      name = "path",
      x = 0,
      y = 0,
      width = 10,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        1428, 1428, 1429, 1984, 1985, 1986, 1427, 1428, 1428, 1428,
        0, 0, 466, 282, 283, 284, 466, 0, 0, 0,
        0, 0, 466, 328, 329, 330, 466, 0, 0, 0,
        0, 0, 466, 374, 375, 376, 466, 0, 0, 0,
        1336, 1336, 1337, 1938, 1939, 1940, 1335, 1336, 1336, 1336,
        0, 0, 1383, 1961, 1962, 1963, 1381, 0, 0, 0,
        0, 0, 1383, 1961, 1962, 1963, 1381, 0, 0, 0,
        0, 0, 1383, 1961, 1962, 1963, 1381, 0, 0, 0,
        0, 0, 1383, 1961, 1962, 1963, 1381, 0, 0, 0,
        0, 0, 1383, 1961, 1962, 1963, 1381, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 10,
      name = "water",
      x = 0,
      y = 0,
      width = 10,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        280, 280, 280, 280, 280, 280, 280, 280, 280, 280,
        326, 326, 326, 326, 326, 326, 326, 326, 326, 326,
        372, 372, 372, 372, 372, 372, 372, 372, 372, 372,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 11,
      name = "bridge",
      x = 0,
      y = 0,
      width = 10,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 282, 283, 284, 0, 0, 0, 0,
        0, 0, 0, 328, 329, 330, 0, 0, 0, 0,
        0, 0, 0, 374, 375, 376, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 9,
      name = "fence",
      x = 0,
      y = 0,
      width = 10,
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
        787, 787, 832, 0, 0, 0, 831, 787, 787, 787,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        787, 787, 786, 0, 0, 0, 785, 787, 787, 787,
        0, 0, 833, 0, 0, 0, 833, 0, 0, 0,
        0, 0, 833, 0, 0, 0, 833, 0, 0, 0,
        0, 0, 833, 0, 0, 0, 833, 0, 0, 0,
        0, 0, 833, 0, 0, 0, 833, 0, 0, 0,
        0, 0, 833, 0, 0, 0, 833, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 12,
      name = "crops",
      x = 0,
      y = 0,
      width = 10,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        1657, 1657, 0, 0, 0, 0, 0, 1657, 1657, 1657,
        1703, 1703, 0, 0, 0, 0, 0, 1703, 1703, 1703,
        1657, 1657, 0, 0, 0, 0, 0, 1657, 1657, 1657,
        1703, 1703, 0, 0, 0, 0, 0, 1703, 1703, 1703,
        1657, 1657, 0, 0, 0, 0, 0, 1657, 1657, 1657,
        1703, 1703, 0, 0, 0, 0, 0, 1703, 1703, 1703
      }
    },
    {
      type = "tilelayer",
      id = 14,
      name = "stone",
      x = 0,
      y = 0,
      width = 10,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        237, 0, 0, 1090, 0, 0, 240, 241, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 1090, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 15,
      name = "dark",
      x = 0,
      y = 0,
      width = 10,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        849, 849, 849, 849, 849, 849, 849, 849, 849, 849,
        849, 849, 849, 849, 849, 849, 849, 849, 849, 849,
        849, 849, 849, 0, 849, 849, 849, 849, 849, 849,
        849, 849, 0, 0, 0, 849, 849, 849, 849, 849,
        849, 849, 849, 0, 849, 849, 849, 849, 849, 849,
        849, 849, 849, 849, 849, 849, 849, 849, 849, 849,
        849, 849, 849, 849, 849, 849, 849, 849, 849, 849,
        849, 849, 849, 849, 849, 849, 849, 849, 849, 849,
        849, 849, 849, 0, 849, 849, 849, 849, 849, 849,
        849, 849, 0, 0, 0, 849, 849, 849, 849, 849
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
          id = 5,
          name = "leiko_spawn",
          type = "",
          shape = "rectangle",
          x = 64.625,
          y = 141.875,
          width = 13.75,
          height = 13.25,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "kana_spawn",
          type = "",
          shape = "rectangle",
          x = 82.375,
          y = 119.375,
          width = 14.25,
          height = 14,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "player_spawn",
          type = "",
          shape = "rectangle",
          x = 51.625,
          y = 104.25,
          width = 13.875,
          height = 13.5,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "hiko_spawn",
          type = "",
          shape = "rectangle",
          x = 79.25,
          y = 84.375,
          width = 14.625,
          height = 13.125,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 13,
      name = "custom_collisions",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = -0.666667,
          y = 27,
          width = 60.3333,
          height = 24.3333,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 84.6667,
          y = 26.6667,
          width = 75,
          height = 24.6667,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
