.class public final enum Lanetwork/channel/entity/ConnTypeEnum;
.super Ljava/lang/Enum;
.source "ConnTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lanetwork/channel/entity/ConnTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lanetwork/channel/entity/ConnTypeEnum;

.field public static final enum HTTP:Lanetwork/channel/entity/ConnTypeEnum;

.field public static final enum SPDY:Lanetwork/channel/entity/ConnTypeEnum;


# instance fields
.field private connType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5
    new-instance v0, Lanetwork/channel/entity/ConnTypeEnum;

    const-string/jumbo v1, "HTTP"

    invoke-direct {v0, v1, v3, v2}, Lanetwork/channel/entity/ConnTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanetwork/channel/entity/ConnTypeEnum;->HTTP:Lanetwork/channel/entity/ConnTypeEnum;

    new-instance v0, Lanetwork/channel/entity/ConnTypeEnum;

    const-string/jumbo v1, "SPDY"

    invoke-direct {v0, v1, v2, v4}, Lanetwork/channel/entity/ConnTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanetwork/channel/entity/ConnTypeEnum;->SPDY:Lanetwork/channel/entity/ConnTypeEnum;

    .line 3
    new-array v0, v4, [Lanetwork/channel/entity/ConnTypeEnum;

    sget-object v1, Lanetwork/channel/entity/ConnTypeEnum;->HTTP:Lanetwork/channel/entity/ConnTypeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lanetwork/channel/entity/ConnTypeEnum;->SPDY:Lanetwork/channel/entity/ConnTypeEnum;

    aput-object v1, v0, v2

    sput-object v0, Lanetwork/channel/entity/ConnTypeEnum;->$VALUES:[Lanetwork/channel/entity/ConnTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lanetwork/channel/entity/ConnTypeEnum;->connType:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lanetwork/channel/entity/ConnTypeEnum;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lanetwork/channel/entity/ConnTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lanetwork/channel/entity/ConnTypeEnum;

    return-object v0
.end method

.method public static values()[Lanetwork/channel/entity/ConnTypeEnum;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lanetwork/channel/entity/ConnTypeEnum;->$VALUES:[Lanetwork/channel/entity/ConnTypeEnum;

    invoke-virtual {v0}, [Lanetwork/channel/entity/ConnTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lanetwork/channel/entity/ConnTypeEnum;

    return-object v0
.end method


# virtual methods
.method public final getConnType()I
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lanetwork/channel/entity/ConnTypeEnum;->connType:I

    return v0
.end method

.method public final setConnType(I)V
    .locals 0

    .prologue
    .line 13
    iput p1, p0, Lanetwork/channel/entity/ConnTypeEnum;->connType:I

    .line 14
    return-void
.end method
