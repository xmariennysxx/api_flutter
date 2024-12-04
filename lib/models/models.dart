class RecipesMain {
  RecipesMain({
    required this.recipes,
  });
  late final List<Recipes> recipes;

  RecipesMain.fromJson(Map<String?, dynamic> json){
    recipes = List.from(json['recipes']).map((e)=>Recipes.fromJson(e)).toList();
  }

  Map<String?, dynamic> toJson() {
    final data = <String?, dynamic>{};
    data['recipes'] = recipes.map((e)=>e.toJson()).toList();
    return data;
  }
}

class Recipes {
  Recipes({
    required this.vegetarian,
    required this.vegan,
    required this.glutenFree,
    required this.dairyFree,
    required this.veryHealthy,
    required this.cheap,
    required this.veryPopular,
    required this.sustainable,
    required this.lowFodmap,
    required this.weightWatcherSmartPoints,
    required this.gaps,
    required this.preparationMinutes,
    required this.cookingMinutes,
    required this.aggregateLikes,
    required this.healthScore,
    required this.creditsText,
    required this.license,
    required this.sourceName,
    required this.pricePerServing,
    required this.extendedIngredients,
    required this.id,
    required this.title,
    required this.readyInMinutes,
    required this.servings,
    required this.sourceUrl,
    required this.image,
    required this.imageType,
    required this.summary,
    required this.cuisines,
    required this.dishTypes,
    required this.diets,
    required this.occasions,
    required this.instructions,
    required this.analyzedInstructions,
    this.originalId,
    required this.spoonacularSourceUrl,
  });
  late final bool vegetarian;
  late final bool vegan;
  late final bool glutenFree;
  late final bool dairyFree;
  late final bool veryHealthy;
  late final bool cheap;
  late final bool veryPopular;
  late final bool sustainable;
  late final bool lowFodmap;
  late final int weightWatcherSmartPoints;
  late final String? gaps;
  late final int preparationMinutes;
  late final int cookingMinutes;
  late final int aggregateLikes;
  late final int healthScore;
  late final String? creditsText;
  late final String? license;
  late final String? sourceName;
  late final double pricePerServing;
  late final List<ExtendedIngredients> extendedIngredients;
  late final int id;
  late final String? title;
  late final int readyInMinutes;
  late final int servings;
  late final String? sourceUrl;
  late final String? image;
  late final String? imageType;
  late final String? summary;
  late final List<dynamic> cuisines;
  late final List<String?> dishTypes;
  late final List<String?> diets;
  late final List<dynamic> occasions;
  late final String? instructions;
  late final List<AnalyzedInstructions> analyzedInstructions;
  late final Null originalId;
  late final String? spoonacularSourceUrl;

  Recipes.fromJson(Map<String?, dynamic> json){
    vegetarian = json['vegetarian'];
    vegan = json['vegan'];
    glutenFree = json['glutenFree'];
    dairyFree = json['dairyFree'];
    veryHealthy = json['veryHealthy'];
    cheap = json['cheap'];
    veryPopular = json['veryPopular'];
    sustainable = json['sustainable'];
    lowFodmap = json['lowFodmap'];
    weightWatcherSmartPoints = json['weightWatcherSmartPoints'];
    gaps = json['gaps'];
    preparationMinutes = json['preparationMinutes'];
    cookingMinutes = json['cookingMinutes'];
    aggregateLikes = json['aggregateLikes'];
    healthScore = json['healthScore'];
    creditsText = json['creditsText'];
    license = json['license'];
    sourceName = json['sourceName'];
    pricePerServing = json['pricePerServing'];
    extendedIngredients = List.from(json['extendedIngredients']).map((e)=>ExtendedIngredients.fromJson(e)).toList();
    id = json['id'];
    title = json['title'];
    readyInMinutes = json['readyInMinutes'];
    servings = json['servings'];
    sourceUrl = json['sourceUrl'];
    image = json['image'];
    imageType = json['imageType'];
    summary = json['summary'];
    cuisines = List.castFrom<dynamic, dynamic>(json['cuisines']);
    dishTypes = List.castFrom<dynamic, String?>(json['dishTypes']);
    diets = List.castFrom<dynamic, String?>(json['diets']);
    occasions = List.castFrom<dynamic, dynamic>(json['occasions']);
    instructions = json['instructions'];
    analyzedInstructions = List.from(json['analyzedInstructions']).map((e)=>AnalyzedInstructions.fromJson(e)).toList();
    originalId = null;
    spoonacularSourceUrl = json['spoonacularSourceUrl'];
  }

  Map<String?, dynamic> toJson() {
    final data = <String?, dynamic>{};
    data['vegetarian'] = vegetarian;
    data['vegan'] = vegan;
    data['glutenFree'] = glutenFree;
    data['dairyFree'] = dairyFree;
    data['veryHealthy'] = veryHealthy;
    data['cheap'] = cheap;
    data['veryPopular'] = veryPopular;
    data['sustainable'] = sustainable;
    data['lowFodmap'] = lowFodmap;
    data['weightWatcherSmartPoints'] = weightWatcherSmartPoints;
    data['gaps'] = gaps;
    data['preparationMinutes'] = preparationMinutes;
    data['cookingMinutes'] = cookingMinutes;
    data['aggregateLikes'] = aggregateLikes;
    data['healthScore'] = healthScore;
    data['creditsText'] = creditsText;
    data['license'] = license;
    data['sourceName'] = sourceName;
    data['pricePerServing'] = pricePerServing;
    data['extendedIngredients'] = extendedIngredients.map((e)=>e.toJson()).toList();
    data['id'] = id;
    data['title'] = title;
    data['readyInMinutes'] = readyInMinutes;
    data['servings'] = servings;
    data['sourceUrl'] = sourceUrl;
    data['image'] = image;
    data['imageType'] = imageType;
    data['summary'] = summary;
    data['cuisines'] = cuisines;
    data['dishTypes'] = dishTypes;
    data['diets'] = diets;
    data['occasions'] = occasions;
    data['instructions'] = instructions;
    data['analyzedInstructions'] = analyzedInstructions.map((e)=>e.toJson()).toList();
    data['originalId'] = originalId;
    data['spoonacularSourceUrl'] = spoonacularSourceUrl;
    return data;
  }
}

class ExtendedIngredients {
  ExtendedIngredients({
    required this.id,
    required this.aisle,
    required this.image,
    required this.consistency,
    required this.name,
    required this.nameClean,
    required this.original,
    required this.originalName,
    required this.amount,
    required this.unit,
    required this.meta,
    required this.measures,
  });
  late final int id;
  late final String? aisle;
  late final String? image;
  late final String? consistency;
  late final String? name;
  late final String? nameClean;
  late final String? original;
  late final String? originalName;
  late final double amount;
  late final String? unit;
  late final List<String?> meta;
  late final Measures measures;

  ExtendedIngredients.fromJson(Map<String?, dynamic> json){
    id = json['id'];
    aisle = json['aisle'];
    image = json['image'];
    consistency = json['consistency'];
    name = json['name'];
    nameClean = json['nameClean'];
    original = json['original'];
    originalName = json['originalName'];
    amount = json['amount'];
    unit = json['unit'];
    meta = List.castFrom<dynamic, String?>(json['meta']);
    measures = Measures.fromJson(json['measures']);
  }

  Map<String?, dynamic> toJson() {
    final data = <String?, dynamic>{};
    data['id'] = id;
    data['aisle'] = aisle;
    data['image'] = image;
    data['consistency'] = consistency;
    data['name'] = name;
    data['nameClean'] = nameClean;
    data['original'] = original;
    data['originalName'] = originalName;
    data['amount'] = amount;
    data['unit'] = unit;
    data['meta'] = meta;
    data['measures'] = measures.toJson();
    return data;
  }
}

class Measures {
  Measures({
    required this.us,
    required this.metric,
  });
  late final Us us;
  late final Metric metric;

  Measures.fromJson(Map<String?, dynamic> json){
    us = Us.fromJson(json['us']);
    metric = Metric.fromJson(json['metric']);
  }

  Map<String?, dynamic> toJson() {
    final data = <String?, dynamic>{};
    data['us'] = us.toJson();
    data['metric'] = metric.toJson();
    return data;
  }
}

class Us {
  Us({
    required this.amount,
    required this.unitShort,
    required this.unitLong,
  });
  late final double amount;
  late final String? unitShort;
  late final String? unitLong;

  Us.fromJson(Map<String?, dynamic> json){
    amount = json['amount'];
    unitShort = json['unitShort'];
    unitLong = json['unitLong'];
  }

  Map<String?, dynamic> toJson() {
    final data = <String?, dynamic>{};
    data['amount'] = amount;
    data['unitShort'] = unitShort;
    data['unitLong'] = unitLong;
    return data;
  }
}

class Metric {
  Metric({
    required this.amount,
    required this.unitShort,
    required this.unitLong,
  });
  late final double? amount;
  late final String? unitShort;
  late final String? unitLong;

  Metric.fromJson(Map<String?, dynamic> json){
    amount = json['amount'];
    unitShort = json['unitShort'];
    unitLong = json['unitLong'];
  }

  Map<String?, dynamic> toJson() {
    final data = <String?, dynamic>{};
    data['amount'] = amount;
    data['unitShort'] = unitShort;
    data['unitLong'] = unitLong;
    return data;
  }
}

class AnalyzedInstructions {
  AnalyzedInstructions({
    required this.name,
    required this.steps,
  });
  late final String? name;
  late final List<Steps> steps;

  AnalyzedInstructions.fromJson(Map<String?, dynamic> json){
    name = json['name'];
    steps = List.from(json['steps']).map((e)=>Steps.fromJson(e)).toList();
  }

  Map<String?, dynamic> toJson() {
    final data = <String?, dynamic>{};
    data['name'] = name;
    data['steps'] = steps.map((e)=>e.toJson()).toList();
    return data;
  }
}

class Steps {
  Steps({
    required this.number,
    required this.step,
    required this.ingredients,
    required this.equipment,
  });
  late final int number;
  late final String? step;
  late final List<Ingredients> ingredients;
  late final List<Equipment> equipment;

  Steps.fromJson(Map<String?, dynamic> json){
    number = json['number'];
    step = json['step'];
    ingredients = List.from(json['ingredients']).map((e)=>Ingredients.fromJson(e)).toList();
    equipment = List.from(json['equipment']).map((e)=>Equipment.fromJson(e)).toList();
  }

  Map<String?, dynamic> toJson() {
    final data = <String?, dynamic>{};
    data['number'] = number;
    data['step'] = step;
    data['ingredients'] = ingredients.map((e)=>e.toJson()).toList();
    data['equipment'] = equipment.map((e)=>e.toJson()).toList();
    return data;
  }
}

class Ingredients {
  Ingredients({
    required this.id,
    required this.name,
    required this.localizedName,
    required this.image,
  });
  late final int id;
  late final String? name;
  late final String? localizedName;
  late final String? image;

  Ingredients.fromJson(Map<String?, dynamic> json){
    id = json['id'];
    name = json['name'];
    localizedName = json['localizedName'];
    image = json['image'];
  }

  Map<String?, dynamic> toJson() {
    final data = <String?, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['localizedName'] = localizedName;
    data['image'] = image;
    return data;
  }
}

class Equipment {
  Equipment({
    required this.id,
    required this.name,
    required this.localizedName,
    required this.image,
  });
  late final int id;
  late final String? name;
  late final String? localizedName;
  late final String? image;

  Equipment.fromJson(Map<String?, dynamic> json){
    id = json['id'];
    name = json['name'];
    localizedName = json['localizedName'];
    image = json['image'];
  }

  Map<String?, dynamic> toJson() {
    final data = <String?, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['localizedName'] = localizedName;
    data['image'] = image;
    return data;
  }
}