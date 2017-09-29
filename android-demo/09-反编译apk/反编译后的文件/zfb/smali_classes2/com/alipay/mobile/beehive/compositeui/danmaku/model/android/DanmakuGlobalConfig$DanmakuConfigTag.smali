.class public final enum Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;
.super Ljava/lang/Enum;
.source "DanmakuGlobalConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLOCK_GUEST_DANMAKU:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

.field public static final enum COLOR_VALUE_WHITE_LIST:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

.field public static final enum DANMAKU_BOLD:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

.field public static final enum DANMAKU_STYLE:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

.field public static final enum DUPLICATE_MERGING_ENABLED:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

.field public static final enum FB_DANMAKU_VISIBILITY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

.field public static final enum FT_DANMAKU_VISIBILITY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

.field public static final enum L2R_DANMAKU_VISIBILITY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

.field public static final enum MAXIMUM_NUMS_IN_SCREEN:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

.field public static final enum R2L_DANMAKU_VISIBILIY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

.field public static final enum SCALE_TEXTSIZE:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

.field public static final enum SCROLL_SPEED_FACTOR:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

.field public static final enum SPECIAL_DANMAKU_VISIBILITY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

.field public static final enum TRANSPARENCY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

.field public static final enum TYPEFACE:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

.field public static final enum USER_HASH_BLACK_LIST:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

.field public static final enum USER_ID_BLACK_LIST:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const-string/jumbo v1, "FT_DANMAKU_VISIBILITY"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->FT_DANMAKU_VISIBILITY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const-string/jumbo v1, "FB_DANMAKU_VISIBILITY"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->FB_DANMAKU_VISIBILITY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const-string/jumbo v1, "L2R_DANMAKU_VISIBILITY"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->L2R_DANMAKU_VISIBILITY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const-string/jumbo v1, "R2L_DANMAKU_VISIBILIY"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->R2L_DANMAKU_VISIBILIY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const-string/jumbo v1, "SPECIAL_DANMAKU_VISIBILITY"

    invoke-direct {v0, v1, v7}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->SPECIAL_DANMAKU_VISIBILITY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const-string/jumbo v1, "TYPEFACE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->TYPEFACE:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const-string/jumbo v1, "TRANSPARENCY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->TRANSPARENCY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const-string/jumbo v1, "SCALE_TEXTSIZE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->SCALE_TEXTSIZE:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const-string/jumbo v1, "MAXIMUM_NUMS_IN_SCREEN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->MAXIMUM_NUMS_IN_SCREEN:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const-string/jumbo v1, "DANMAKU_STYLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->DANMAKU_STYLE:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const-string/jumbo v1, "DANMAKU_BOLD"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->DANMAKU_BOLD:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const-string/jumbo v1, "COLOR_VALUE_WHITE_LIST"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->COLOR_VALUE_WHITE_LIST:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const-string/jumbo v1, "USER_ID_BLACK_LIST"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->USER_ID_BLACK_LIST:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const-string/jumbo v1, "USER_HASH_BLACK_LIST"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->USER_HASH_BLACK_LIST:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const-string/jumbo v1, "SCROLL_SPEED_FACTOR"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->SCROLL_SPEED_FACTOR:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const-string/jumbo v1, "BLOCK_GUEST_DANMAKU"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->BLOCK_GUEST_DANMAKU:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const-string/jumbo v1, "DUPLICATE_MERGING_ENABLED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->DUPLICATE_MERGING_ENABLED:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    .line 20
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->FT_DANMAKU_VISIBILITY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->FB_DANMAKU_VISIBILITY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->L2R_DANMAKU_VISIBILITY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->R2L_DANMAKU_VISIBILIY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->SPECIAL_DANMAKU_VISIBILITY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->TYPEFACE:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->TRANSPARENCY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->SCALE_TEXTSIZE:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->MAXIMUM_NUMS_IN_SCREEN:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->DANMAKU_STYLE:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->DANMAKU_BOLD:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->COLOR_VALUE_WHITE_LIST:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->USER_ID_BLACK_LIST:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->USER_HASH_BLACK_LIST:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->SCROLL_SPEED_FACTOR:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->BLOCK_GUEST_DANMAKU:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->DUPLICATE_MERGING_ENABLED:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->ENUM$VALUES:[Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->ENUM$VALUES:[Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final isVisibilityRelatedTag()Z
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->FT_DANMAKU_VISIBILITY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->FB_DANMAKU_VISIBILITY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->L2R_DANMAKU_VISIBILITY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->R2L_DANMAKU_VISIBILIY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->SPECIAL_DANMAKU_VISIBILITY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->COLOR_VALUE_WHITE_LIST:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->USER_ID_BLACK_LIST:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 24
    goto :goto_0
.end method
