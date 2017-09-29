.class public Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;
.super Ljava/lang/Object;
.source "StyleValue.java"


# static fields
.field public static final FUND_TAG_BG_COLOR_ARRAY:[I

.field public static final FUND_TAG_COLOR_EXCEPTION:I

.field public static final FUND_TEXT_COLOR_ARRAY:[I

.field public static final FUND_TEXT_COLOR_EXCEPTION:I

.field public static final TAOBAO_TAG_BG_COLOR_ARRAY:[I

.field public static final TAOBAO_TEXT_COLOR_ARRAY:[I

.field public static final TAOBAO_TEXT_PRICE_COLOR_ARRAY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-array v0, v5, [I

    const-string/jumbo v1, "#A5A5A5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    const-string/jumbo v1, "#FC461E"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->TAOBAO_TEXT_COLOR_ARRAY:[I

    .line 13
    new-array v0, v5, [I

    const-string/jumbo v1, "#FC461E"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    const-string/jumbo v1, "#A5A5A5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->TAOBAO_TEXT_PRICE_COLOR_ARRAY:[I

    .line 14
    new-array v0, v5, [I

    const-string/jumbo v1, "#FB471E"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    const-string/jumbo v1, "#FFB53A"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->TAOBAO_TAG_BG_COLOR_ARRAY:[I

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [I

    const-string/jumbo v1, "#666666"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    const-string/jumbo v1, "#f4333c"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v4

    const-string/jumbo v1, "#06bf04"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "#a5a5a5"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->FUND_TEXT_COLOR_ARRAY:[I

    .line 18
    new-array v0, v5, [I

    const-string/jumbo v1, "#00AAEE"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    const-string/jumbo v1, "#B4BFD6"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->FUND_TAG_BG_COLOR_ARRAY:[I

    .line 19
    const-string/jumbo v0, "#B4BFD6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->FUND_TAG_COLOR_EXCEPTION:I

    .line 20
    const-string/jumbo v0, "#a5a5a5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->FUND_TEXT_COLOR_EXCEPTION:I

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
