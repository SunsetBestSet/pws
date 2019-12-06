return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 16,
  height = 12,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 13,
  nextobjectid = 4,
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
      filename = "overworld.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 40,
      image = "overworld0.png",
      imagewidth = 640,
      imageheight = 576,
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
      tilecount = 1440,
      tiles = {}
    },
    {
      name = "inner",
      firstgid = 2441,
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
      id = 7,
      name = "floor",
      x = 0,
      y = 0,
      width = 16,
      height = 12,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0,
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0,
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0,
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2441, 2441, 0,
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2441, 2441, 0,
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2441, 2441, 2441,
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2441, 2441, 2441,
        0, 1, 1, 2441, 2441, 2441, 2441, 2441, 1, 2441, 1, 1, 1, 2441, 2441, 0,
        0, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 0,
        0, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 0,
        0, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 2441, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 2441, 2441, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 8,
      name = "wall",
      x = 0,
      y = 0,
      width = 16,
      height = 12,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        588, 2688, 2686, 2687, 2688, 2686, 2687, 2688, 2686, 2687, 2688, 2686, 2687, 2688, 2686, 3028,
        588, 2728, 2726, 2727, 2728, 2726, 2727, 2728, 2726, 2727, 2728, 2726, 2727, 2728, 2726, 3028,
        588, 2768, 2766, 2767, 2768, 2766, 2767, 2768, 2766, 2767, 2768, 2766, 2767, 2768, 2766, 3028,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3028,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3028,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3028,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3028,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3028,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3028,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 9,
      name = "kitchen",
      x = 0,
      y = 0,
      width = 16,
      height = 12,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        0, 0, 0, 295, 296, 297, 0, 0, 0, 0, 2735, 2736, 2737, 0, 0, 0,
        0, 0, 0, 335, 336, 337, 2853, 2854, 2853, 2854, 2775, 2776, 2777, 0, 0, 0,
        0, 0, 0, 291, 292, 293, 2893, 2894, 2893, 2894, 2731, 2732, 2733, 1828, 1827, 0,
        0, 0, 0, 371, 372, 373, 2931, 2932, 2931, 2932, 2811, 2812, 2813, 1868, 1867, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 2807, 2809, 2731, 2733, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 2847, 2849, 2771, 2773, 2491, 2492, 2492, 2492, 2493, 1829, 0, 0, 0,
        0, 0, 0, 2887, 2889, 2811, 2813, 2571, 2572, 2572, 2572, 2573, 1869, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      id = 10,
      name = "box",
      x = 0,
      y = 0,
      width = 16,
      height = 12,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        0, 0, 0, 0, 2769, 0, 0, 0, 0, 0, 0, 2971, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 1829, 1830, 2692, 0, 0, 0, 0, 0, 0, 0, 2890, 0, 0, 0, 0,
        0, 1828, 1870, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1829, 0, 0,
        0, 1868, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1869, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 2770, 2769, 2851, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 2810, 2850, 2692, 2694, 0, 2695, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 3028, 3028, 3028, 3028, 3028, 3028, 3028, 0, 0, 3028, 3028, 3028, 3028, 3028, 3028
      }
    },
    {
      type = "objectgroup",
      id = 6,
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
          x = 211.167,
          y = 89.666,
          width = 15,
          height = 12.6667,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "dining_door",
          type = "",
          shape = "rectangle",
          x = 127,
          y = 184.875,
          width = 33.5,
          height = 7,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/dining_room.lua"
          }
        },
        {
          id = 3,
          name = "main_hallway",
          type = "",
          shape = "rectangle",
          x = 250,
          y = 79.75,
          width = 5.875,
          height = 32.375,
          rotation = 0,
          visible = true,
          properties = {
            ["nextMap"] = "maps/main_hallway.lua"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 12,
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
