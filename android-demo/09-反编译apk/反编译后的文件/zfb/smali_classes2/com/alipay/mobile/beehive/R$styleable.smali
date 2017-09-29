.class public final Lcom/alipay/mobile/beehive/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field public static final CirclePageIndicator:[I

.field public static final CirclePageIndicator_android_background:I = 0x1

.field public static final CirclePageIndicator_android_orientation:I = 0x0

.field public static final CirclePageIndicator_centered:I = 0x2

.field public static final CirclePageIndicator_fillColor:I = 0x3

.field public static final CirclePageIndicator_pageColor:I = 0x4

.field public static final CirclePageIndicator_radius:I = 0x5

.field public static final CirclePageIndicator_snap:I = 0x6

.field public static final CirclePageIndicator_strokeColor:I = 0x7

.field public static final CirclePageIndicator_strokeWidth:I = 0x8

.field public static final CustomTheme:[I

.field public static final CustomTheme_gifMoviewViewStyle:I = 0x0

.field public static final GifMoviewView:[I

.field public static final GifMoviewView_gif:I = 0x0

.field public static final GifMoviewView_paused:I = 0x1

.field public static final ViewPagerIndicator:[I

.field public static final ViewPagerIndicator_vpiCirclePageIndicatorStyle:I = 0x0

.field public static final ViewPagerIndicator_vpiIconPageIndicatorStyle:I = 0x1

.field public static final ViewPagerIndicator_vpiLinePageIndicatorStyle:I = 0x2

.field public static final ViewPagerIndicator_vpiTabPageIndicatorStyle:I = 0x4

.field public static final ViewPagerIndicator_vpiTitlePageIndicatorStyle:I = 0x3

.field public static final ViewPagerIndicator_vpiUnderlinePageIndicatorStyle:I = 0x5

.field public static final ad:[I

.field public static final ad_space_code:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 590
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/beehive/R$styleable;->CirclePageIndicator:[I

    .line 742
    new-array v0, v3, [I

    .line 743
    const v1, 0x38010010

    aput v1, v0, v2

    .line 742
    sput-object v0, Lcom/alipay/mobile/beehive/R$styleable;->CustomTheme:[I

    .line 767
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alipay/mobile/beehive/R$styleable;->GifMoviewView:[I

    .line 814
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/alipay/mobile/beehive/R$styleable;->ViewPagerIndicator:[I

    .line 900
    new-array v0, v3, [I

    .line 901
    const/high16 v1, 0x38010000

    aput v1, v0, v2

    .line 900
    sput-object v0, Lcom/alipay/mobile/beehive/R$styleable;->ad:[I

    .line 563
    return-void

    .line 590
    nop

    :array_0
    .array-data 4
        0x10100c4
        0x10100d4
        0x38010007
        0x38010008
        0x38010009
        0x3801000a
        0x3801000b
        0x3801000c
        0x3801000d
    .end array-data

    .line 767
    :array_1
    .array-data 4
        0x3801000e
        0x3801000f
    .end array-data

    .line 814
    :array_2
    .array-data 4
        0x38010001    # 3.0756E-5f
        0x38010002
        0x38010003
        0x38010004
        0x38010005
        0x38010006
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
