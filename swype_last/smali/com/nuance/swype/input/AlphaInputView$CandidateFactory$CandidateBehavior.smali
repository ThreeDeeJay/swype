.class public final enum Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;
.super Ljava/lang/Enum;
.source "AlphaInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/AlphaInputView$CandidateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CandidateBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

.field public static final enum AUTO_CORRECTION:Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

.field public static final enum DISABLE:Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

.field public static final enum SWAP:Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2819
    new-instance v0, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    const-string/jumbo v1, "DISABLE"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;->DISABLE:Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    .line 2824
    new-instance v0, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    const-string/jumbo v1, "AUTO_CORRECTION"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;->AUTO_CORRECTION:Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    .line 2829
    new-instance v0, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    const-string/jumbo v1, "SWAP"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;->SWAP:Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    .line 2817
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    sget-object v1, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;->DISABLE:Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;->AUTO_CORRECTION:Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;->SWAP:Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;->$VALUES:[Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2817
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2817
    const-class v0, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;
    .registers 1

    .prologue
    .line 2817
    sget-object v0, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;->$VALUES:[Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    return-object v0
.end method
