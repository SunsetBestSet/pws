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
  nextobjectid = 6,
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
      name = "inner",
      firstgid = 2933,
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
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2933, 2933, 0,
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2933, 2933, 0,
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2933, 2933, 2933,
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2933, 2933, 2933,
        0, 1, 1, 2933, 2933, 2933, 2933, 2933, 1, 2933, 1, 1, 1, 2933, 2933, 0,
        0, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 0,
        0, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 0,
        0, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 2933, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 2933, 2933, 0, 0, 0, 0, 0, 0
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
        588, 3180, 3178, 3179, 3180, 3178, 3179, 3180, 3178, 3179, 3180, 3178, 3179, 3180, 3178, 3520,
        588, 3220, 3218, 3219, 3220, 3218, 3219, 3220, 3218, 3219, 3220, 3218, 3219, 3220, 3218, 3520,
        588, 3260, 3258, 3259, 3260, 3258, 3259, 3260, 3258, 3259, 3260, 3258, 3259, 3260, 3258, 3520,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3520,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3520,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3520,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3520,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3520,
        588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3520,
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
        0, 0, 0, 295, 296, 297, 0, 0, 0, 0, 3227, 3228, 3229, 0, 0, 0,
        0, 0, 0, 335, 336, 337, 3345, 3346, 3345, 3346, 3267, 3268, 3269, 0, 0, 0,
        0, 0, 0, 291, 292, 293, 3385, 3386, 3385, 3386, 3223, 3224, 3225, 1950, 1950, 0,
        0, 0, 0, 371, 372, 373, 3423, 3424, 3423, 3424, 3303, 3304, 3305, 1996, 1996, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 3299, 3301, 3223, 3225, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 3339, 3341, 3263, 3265, 2983, 2984, 2984, 2984, 2985, 0, 0, 0, 0,
        0, 0, 0, 3379, 3381, 3303, 3305, 3063, 3064, 3064, 3064, 3065, 0, 0, 0, 0,
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
        0, 0, 0, 0, 3261, 0, 0, 0, 0, 0, 0, 3463, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 1950, 1950, 3184, 0, 0, 0, 0, 0, 0, 0, 3382, 0, 0, 0, 0,
        0, 1996, 1996, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1950, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1996, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 3262, 3261, 3343, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 3302, 3342, 3184, 3186, 0, 3187, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 3520, 3520, 3520, 3520, 3520, 3520, 3520, 0, 0, 3520, 3520, 3520, 3520, 3520, 3520
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
          x = 217.167,
          y = 89.666,
          width = 15,
          height = 12.6667,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "between_door",
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
        },
        {
          id = 4,
          name = "player_spawn1",
          type = "",
          shape = "rectangle",
          x = 135.667,
          y = 154.667,
          width = 15.3333,
          height = 15.3333,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "chef_spawn",
          type = "",
          shape = "rectangle",
          x = 161.667,
          y = 63.6667,
          width = 14.3333,
          height = 13.6667,
          rotation = 0,
          visible = true,
          properties = {}
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
