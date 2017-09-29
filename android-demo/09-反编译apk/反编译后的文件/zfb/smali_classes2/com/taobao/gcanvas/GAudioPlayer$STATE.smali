.class public final enum Lcom/taobao/gcanvas/GAudioPlayer$STATE;
.super Ljava/lang/Enum;
.source "GAudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/gcanvas/GAudioPlayer$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/gcanvas/GAudioPlayer$STATE;

.field public static final enum MEDIA_LOADING:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

.field public static final enum MEDIA_NONE:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

.field public static final enum MEDIA_PAUSED:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

.field public static final enum MEDIA_RUNNING:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

.field public static final enum MEDIA_STARTING:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

.field public static final enum MEDIA_STOPPED:Lcom/taobao/gcanvas/GAudioPlayer$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    const-string/jumbo v1, "MEDIA_NONE"

    invoke-direct {v0, v1, v3}, Lcom/taobao/gcanvas/GAudioPlayer$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_NONE:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    .line 49
    new-instance v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    const-string/jumbo v1, "MEDIA_STARTING"

    invoke-direct {v0, v1, v4}, Lcom/taobao/gcanvas/GAudioPlayer$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_STARTING:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    .line 50
    new-instance v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    const-string/jumbo v1, "MEDIA_RUNNING"

    invoke-direct {v0, v1, v5}, Lcom/taobao/gcanvas/GAudioPlayer$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_RUNNING:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    .line 51
    new-instance v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    const-string/jumbo v1, "MEDIA_PAUSED"

    invoke-direct {v0, v1, v6}, Lcom/taobao/gcanvas/GAudioPlayer$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_PAUSED:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    .line 52
    new-instance v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    const-string/jumbo v1, "MEDIA_STOPPED"

    invoke-direct {v0, v1, v7}, Lcom/taobao/gcanvas/GAudioPlayer$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_STOPPED:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    .line 53
    new-instance v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    const-string/jumbo v1, "MEDIA_LOADING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taobao/gcanvas/GAudioPlayer$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_LOADING:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    .line 48
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    sget-object v1, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_NONE:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_STARTING:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_RUNNING:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_PAUSED:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_STOPPED:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->MEDIA_LOADING:Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->$VALUES:[Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/gcanvas/GAudioPlayer$STATE;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    return-object v0
.end method

.method public static values()[Lcom/taobao/gcanvas/GAudioPlayer$STATE;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/taobao/gcanvas/GAudioPlayer$STATE;->$VALUES:[Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    invoke-virtual {v0}, [Lcom/taobao/gcanvas/GAudioPlayer$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/gcanvas/GAudioPlayer$STATE;

    return-object v0
.end method
