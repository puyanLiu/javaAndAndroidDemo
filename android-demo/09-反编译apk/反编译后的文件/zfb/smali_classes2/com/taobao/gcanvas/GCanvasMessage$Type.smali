.class public final enum Lcom/taobao/gcanvas/GCanvasMessage$Type;
.super Ljava/lang/Enum;
.source "GCanvasMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/gcanvas/GCanvasMessage$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/gcanvas/GCanvasMessage$Type;

.field public static final enum CAPTURE:Lcom/taobao/gcanvas/GCanvasMessage$Type;

.field public static final enum GET_IMAGEDATA:Lcom/taobao/gcanvas/GCanvasMessage$Type;

.field public static final enum LOAD:Lcom/taobao/gcanvas/GCanvasMessage$Type;

.field public static final enum RELOAD:Lcom/taobao/gcanvas/GCanvasMessage$Type;

.field public static final enum RENDER:Lcom/taobao/gcanvas/GCanvasMessage$Type;

.field public static final enum SET_BACKGROUND:Lcom/taobao/gcanvas/GCanvasMessage$Type;

.field public static final enum SET_CLEAR_COLOR:Lcom/taobao/gcanvas/GCanvasMessage$Type;

.field public static final enum SET_CONTEXT_TYPE:Lcom/taobao/gcanvas/GCanvasMessage$Type;

.field public static final enum SET_DEVICE_PIXEL_RATIO:Lcom/taobao/gcanvas/GCanvasMessage$Type;

.field public static final enum SET_HI_QUALITY:Lcom/taobao/gcanvas/GCanvasMessage$Type;

.field public static final enum SET_ORTHO:Lcom/taobao/gcanvas/GCanvasMessage$Type;

.field public static final enum SET_TYOFFSETFLAG:Lcom/taobao/gcanvas/GCanvasMessage$Type;

.field public static final enum UNLOAD:Lcom/taobao/gcanvas/GCanvasMessage$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;

    const-string/jumbo v1, "LOAD"

    invoke-direct {v0, v1, v3}, Lcom/taobao/gcanvas/GCanvasMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;->LOAD:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    .line 25
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;

    const-string/jumbo v1, "UNLOAD"

    invoke-direct {v0, v1, v4}, Lcom/taobao/gcanvas/GCanvasMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;->UNLOAD:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    .line 26
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;

    const-string/jumbo v1, "RELOAD"

    invoke-direct {v0, v1, v5}, Lcom/taobao/gcanvas/GCanvasMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;->RELOAD:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    .line 27
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;

    const-string/jumbo v1, "RENDER"

    invoke-direct {v0, v1, v6}, Lcom/taobao/gcanvas/GCanvasMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;->RENDER:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    .line 28
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;

    const-string/jumbo v1, "SET_ORTHO"

    invoke-direct {v0, v1, v7}, Lcom/taobao/gcanvas/GCanvasMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_ORTHO:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    .line 29
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;

    const-string/jumbo v1, "CAPTURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taobao/gcanvas/GCanvasMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;->CAPTURE:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    .line 30
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;

    const-string/jumbo v1, "SET_BACKGROUND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/taobao/gcanvas/GCanvasMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_BACKGROUND:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    .line 31
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;

    const-string/jumbo v1, "SET_TYOFFSETFLAG"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/taobao/gcanvas/GCanvasMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_TYOFFSETFLAG:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    .line 32
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;

    const-string/jumbo v1, "GET_IMAGEDATA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/taobao/gcanvas/GCanvasMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;->GET_IMAGEDATA:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    .line 33
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;

    const-string/jumbo v1, "SET_DEVICE_PIXEL_RATIO"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/taobao/gcanvas/GCanvasMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_DEVICE_PIXEL_RATIO:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    .line 34
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;

    const-string/jumbo v1, "SET_CLEAR_COLOR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/taobao/gcanvas/GCanvasMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_CLEAR_COLOR:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    .line 35
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;

    const-string/jumbo v1, "SET_HI_QUALITY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/taobao/gcanvas/GCanvasMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_HI_QUALITY:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    .line 36
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;

    const-string/jumbo v1, "SET_CONTEXT_TYPE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/taobao/gcanvas/GCanvasMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_CONTEXT_TYPE:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    .line 23
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/taobao/gcanvas/GCanvasMessage$Type;

    sget-object v1, Lcom/taobao/gcanvas/GCanvasMessage$Type;->LOAD:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/gcanvas/GCanvasMessage$Type;->UNLOAD:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/gcanvas/GCanvasMessage$Type;->RELOAD:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/gcanvas/GCanvasMessage$Type;->RENDER:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_ORTHO:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/gcanvas/GCanvasMessage$Type;->CAPTURE:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_BACKGROUND:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_TYOFFSETFLAG:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/taobao/gcanvas/GCanvasMessage$Type;->GET_IMAGEDATA:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_DEVICE_PIXEL_RATIO:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_CLEAR_COLOR:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_HI_QUALITY:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_CONTEXT_TYPE:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;->$VALUES:[Lcom/taobao/gcanvas/GCanvasMessage$Type;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/gcanvas/GCanvasMessage$Type;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;

    return-object v0
.end method

.method public static values()[Lcom/taobao/gcanvas/GCanvasMessage$Type;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/taobao/gcanvas/GCanvasMessage$Type;->$VALUES:[Lcom/taobao/gcanvas/GCanvasMessage$Type;

    invoke-virtual {v0}, [Lcom/taobao/gcanvas/GCanvasMessage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/gcanvas/GCanvasMessage$Type;

    return-object v0
.end method
