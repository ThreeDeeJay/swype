.class public final Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorUriLoader$Factory;
.super Ljava/lang/Object;
.source "FileDescriptorUriLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorUriLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
        "<",
        "Landroid/net/Uri;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factories"    # Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/GenericLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Landroid/net/Uri;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorUriLoader;

    const-class v1, Lcom/bumptech/glide/load/model/GlideUrl;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2, v1, v2}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorUriLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V

    return-object v0
.end method
