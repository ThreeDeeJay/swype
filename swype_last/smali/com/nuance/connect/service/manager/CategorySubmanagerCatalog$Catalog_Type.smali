.class public final enum Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Catalog_Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;

.field public static final enum BUNDLE:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;

.field public static final enum KEYBOARD:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;

    const-string/jumbo v1, "KEYBOARD"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;->KEYBOARD:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;

    new-instance v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;

    const-string/jumbo v1, "BUNDLE"

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;->BUNDLE:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;

    sget-object v1, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;->KEYBOARD:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;->BUNDLE:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;->$VALUES:[Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;
    .registers 2

    const-class v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;
    .registers 1

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;->$VALUES:[Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;

    invoke-virtual {v0}, [Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$Catalog_Type;

    return-object v0
.end method
