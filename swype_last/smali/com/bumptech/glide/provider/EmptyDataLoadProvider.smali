.class public final Lcom/bumptech/glide/provider/EmptyDataLoadProvider;
.super Ljava/lang/Object;
.source "EmptyDataLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/provider/DataLoadProvider",
        "<TT;TZ;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_DATA_LOAD_PROVIDER:Lcom/bumptech/glide/provider/DataLoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Lcom/bumptech/glide/provider/EmptyDataLoadProvider;

    invoke-direct {v0}, Lcom/bumptech/glide/provider/EmptyDataLoadProvider;-><init>()V

    sput-object v0, Lcom/bumptech/glide/provider/EmptyDataLoadProvider;->EMPTY_DATA_LOAD_PROVIDER:Lcom/bumptech/glide/provider/DataLoadProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    .local p0, "this":Lcom/bumptech/glide/provider/EmptyDataLoadProvider;, "Lcom/bumptech/glide/provider/EmptyDataLoadProvider<TT;TZ;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/bumptech/glide/provider/DataLoadProvider;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 20
    sget-object v0, Lcom/bumptech/glide/provider/EmptyDataLoadProvider;->EMPTY_DATA_LOAD_PROVIDER:Lcom/bumptech/glide/provider/DataLoadProvider;

    return-object v0
.end method


# virtual methods
.method public final getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/bumptech/glide/provider/EmptyDataLoadProvider;, "Lcom/bumptech/glide/provider/EmptyDataLoadProvider<TT;TZ;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/bumptech/glide/provider/EmptyDataLoadProvider;, "Lcom/bumptech/glide/provider/EmptyDataLoadProvider<TT;TZ;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/bumptech/glide/provider/EmptyDataLoadProvider;, "Lcom/bumptech/glide/provider/EmptyDataLoadProvider<TT;TZ;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSourceEncoder()Lcom/bumptech/glide/load/Encoder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Encoder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/bumptech/glide/provider/EmptyDataLoadProvider;, "Lcom/bumptech/glide/provider/EmptyDataLoadProvider<TT;TZ;>;"
    const/4 v0, 0x0

    return-object v0
.end method
