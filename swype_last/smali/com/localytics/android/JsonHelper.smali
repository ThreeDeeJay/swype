.class final Lcom/localytics/android/JsonHelper;
.super Ljava/lang/Object;
.source "JsonHelper.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertToListOfMaps(Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 261
    if-eqz p0, :cond_16

    .line 263
    :try_start_2
    invoke-static {p0}, Lcom/localytics/android/JsonHelper;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 264
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_16

    .line 266
    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->toList(Lorg/json/JSONArray;)Ljava/util/List;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_d} :catch_f

    move-result-object v2

    .line 275
    .end local v0    # "array":Lorg/json/JSONArray;
    :goto_e
    return-object v2

    .line 270
    :catch_f
    move-exception v1

    .line 272
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "JSONException"

    invoke-static {v2, v1}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_16
    const/4 v2, 0x0

    goto :goto_e
.end method

.method private static fromJson(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "json"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 81
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v0, :cond_6

    .line 83
    const/4 p0, 0x0

    .line 95
    .end local p0    # "json":Ljava/lang/Object;
    :cond_5
    :goto_5
    return-object p0

    .line 85
    .restart local p0    # "json":Ljava/lang/Object;
    :cond_6
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_11

    .line 87
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "json":Ljava/lang/Object;
    invoke-static {p0}, Lcom/localytics/android/JsonHelper;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    goto :goto_5

    .line 89
    .restart local p0    # "json":Ljava/lang/Object;
    :cond_11
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_5

    .line 91
    check-cast p0, Lorg/json/JSONArray;

    .end local p0    # "json":Ljava/lang/Object;
    invoke-static {p0}, Lcom/localytics/android/JsonHelper;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    goto :goto_5
.end method

.method static getMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static getSafeBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 238
    .local v0, "booleanValue":Z
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 240
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_10

    .line 242
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 253
    :cond_f
    :goto_f
    return v0

    .line 244
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_10
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_20

    .line 246
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    goto :goto_f

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d

    .line 248
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_20
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 250
    check-cast v1, Ljava/lang/String;

    .end local v1    # "value":Ljava/lang/Object;
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_f
.end method

.method static getSafeDoubleFromMap(Ljava/util/Map;Ljava/lang/String;)D
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")D"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-wide/16 v0, 0x0

    .line 164
    .local v0, "doubleValue":D
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 166
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_11

    .line 168
    check-cast v2, Ljava/lang/Number;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 175
    :cond_10
    :goto_10
    return-wide v0

    .line 170
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_11
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_10

    .line 172
    check-cast v2, Ljava/lang/String;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_10
.end method

.method static getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 122
    .local v0, "integerValue":I
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 124
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_9

    .line 126
    const/4 v2, 0x0

    .line 137
    .end local v1    # "value":Ljava/lang/Object;
    :goto_8
    return v2

    .line 128
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_15

    .line 130
    check-cast v1, Ljava/lang/Number;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    :cond_13
    :goto_13
    move v2, v0

    .line 137
    goto :goto_8

    .line 132
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_15
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 134
    check-cast v1, Ljava/lang/String;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_13
.end method

.method static getSafeListFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 221
    .local v0, "listValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 223
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_9

    .line 225
    const/4 v2, 0x0

    .line 232
    :goto_8
    return-object v2

    .line 227
    :cond_9
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_10

    move-object v0, v1

    .line 229
    check-cast v0, Ljava/util/List;

    :cond_10
    move-object v2, v0

    .line 232
    goto :goto_8
.end method

.method static getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-wide/16 v0, 0x0

    .line 143
    .local v0, "longValue":J
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 145
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_b

    .line 147
    const-wide/16 v4, 0x0

    .line 158
    .end local v2    # "value":Ljava/lang/Object;
    :goto_a
    return-wide v4

    .line 149
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_b
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_17

    .line 151
    check-cast v2, Ljava/lang/Number;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :cond_15
    :goto_15
    move-wide v4, v0

    .line 158
    goto :goto_a

    .line 153
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_17
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_15

    .line 155
    check-cast v2, Ljava/lang/String;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_15
.end method

.method static getSafeMapFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 203
    .local v0, "mapValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 205
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_9

    .line 207
    const/4 v2, 0x0

    .line 214
    :goto_8
    return-object v2

    .line 209
    :cond_9
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_10

    move-object v0, v1

    .line 211
    check-cast v0, Ljava/util/Map;

    :cond_10
    move-object v2, v0

    .line 214
    goto :goto_8
.end method

.method static getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 181
    .local v0, "stringValue":Ljava/lang/String;
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 183
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_9

    .line 185
    const/4 v2, 0x0

    .line 196
    .end local v1    # "value":Ljava/lang/Object;
    :goto_8
    return-object v2

    .line 187
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_19

    .line 189
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_17
    :goto_17
    move-object v2, v0

    .line 196
    goto :goto_8

    .line 191
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_19
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_17

    move-object v0, v1

    .line 193
    check-cast v0, Ljava/lang/String;

    goto :goto_17
.end method

.method static getSafeStringFromValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "stringValue":Ljava/lang/String;
    if-nez p0, :cond_5

    .line 105
    const/4 v1, 0x0

    .line 116
    :goto_4
    return-object v1

    .line 107
    :cond_5
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_f

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_d
    :goto_d
    move-object v1, v0

    .line 116
    goto :goto_4

    .line 111
    :cond_f
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_d

    move-object v0, p0

    .line 113
    check-cast v0, Ljava/lang/String;

    goto :goto_d
.end method

.method static isEmptyObject(Lorg/json/JSONObject;)Z
    .registers 2
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static toJSON(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 21
    instance-of v5, p0, Ljava/util/Map;

    if-eqz v5, :cond_2e

    .line 23
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .local v1, "json":Lorg/json/JSONObject;
    move-object v3, p0

    .line 24
    check-cast v3, Ljava/util/Map;

    .line 25
    .local v3, "map":Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 27
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/localytics/android/JsonHelper;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_14

    .line 31
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "map":Ljava/util/Map;
    :cond_2e
    instance-of v5, p0, Ljava/lang/Iterable;

    if-eqz v5, :cond_4f

    .line 33
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 34
    .local v1, "json":Lorg/json/JSONArray;
    check-cast p0, Ljava/lang/Iterable;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 36
    .local v4, "value":Ljava/lang/Object;
    invoke-static {v4}, Lcom/localytics/android/JsonHelper;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3d

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "json":Lorg/json/JSONArray;
    .end local v4    # "value":Ljava/lang/Object;
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_4f
    move-object v1, p0

    .line 42
    .end local p0    # "object":Ljava/lang/Object;
    :cond_50
    return-object v1
.end method

.method static toList(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 4
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v1, "list":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 74
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/localytics/android/JsonHelper;->fromJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 76
    :cond_1a
    return-object v1
.end method

.method static toMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 5
    .param p0, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 60
    .local v1, "keys":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/localytics/android/JsonHelper;->fromJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 65
    .end local v0    # "key":Ljava/lang/String;
    :cond_21
    return-object v2
.end method
