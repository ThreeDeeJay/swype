.class public abstract Lcom/nuance/connect/internal/Property$IntegerValueListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/internal/Property$ValueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IntegerValueListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nuance/connect/internal/Property$ValueListener",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypeArgument()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method
