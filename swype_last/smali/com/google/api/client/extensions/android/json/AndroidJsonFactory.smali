.class public Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;
.super Lcom/google/api/client/json/JsonFactory;
.source "AndroidJsonFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/extensions/android/json/AndroidJsonFactory$InstanceHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/api/client/json/JsonFactory;-><init>()V

    .line 75
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/api/client/extensions/android/AndroidUtils;->checkMinimumSdkLevel(I)V

    .line 76
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory$InstanceHolder;->INSTANCE:Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    return-object v0
.end method


# virtual methods
.method public createJsonGenerator(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonGenerator;
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "enc"    # Ljava/nio/charset/Charset;

    .prologue
    .line 105
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/google/api/client/json/JsonGenerator;

    move-result-object v0

    return-object v0
.end method

.method public createJsonGenerator(Ljava/io/Writer;)Lcom/google/api/client/json/JsonGenerator;
    .registers 4
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 110
    new-instance v0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;

    new-instance v1, Landroid/util/JsonWriter;

    invoke-direct {v1, p1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;-><init>(Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;Landroid/util/JsonWriter;)V

    return-object v0
.end method

.method public createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 82
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/google/api/client/util/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonParser;
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 87
    if-nez p2, :cond_7

    .line 88
    invoke-virtual {p0, p1}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    .line 90
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    goto :goto_6
.end method

.method public createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;
    .registers 4
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 100
    new-instance v0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;

    new-instance v1, Landroid/util/JsonReader;

    invoke-direct {v1, p1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;-><init>(Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;Landroid/util/JsonReader;)V

    return-object v0
.end method

.method public createJsonParser(Ljava/lang/String;)Lcom/google/api/client/json/JsonParser;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    return-object v0
.end method
