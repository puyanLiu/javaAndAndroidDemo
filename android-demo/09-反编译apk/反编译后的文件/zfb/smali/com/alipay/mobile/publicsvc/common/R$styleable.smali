.class public final Lcom/alipay/mobile/publicsvc/common/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field public static final public_service_circle_page_indicator:[I

.field public static final public_service_circle_page_indicator_android_background:I = 0x1

.field public static final public_service_circle_page_indicator_android_orientation:I = 0x0

.field public static final public_service_circle_page_indicator_circle_centered:I = 0x2

.field public static final public_service_circle_page_indicator_circle_radius:I = 0x6

.field public static final public_service_circle_page_indicator_circle_snap:I = 0x7

.field public static final public_service_circle_page_indicator_circle_stroke_width:I = 0x3

.field public static final public_service_circle_page_indicator_fill_color:I = 0x4

.field public static final public_service_circle_page_indicator_page_color:I = 0x5

.field public static final public_service_circle_page_indicator_stroke_color:I = 0x8

.field public static final public_service_view_pager_indicator:[I

.field public static final public_service_view_pager_indicator_circle_page_indicator_style:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 335
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/publicsvc/common/R$styleable;->public_service_circle_page_indicator:[I

    .line 487
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 488
    const/high16 v2, 0x44010000    # 516.0f

    aput v2, v0, v1

    .line 487
    sput-object v0, Lcom/alipay/mobile/publicsvc/common/R$styleable;->public_service_view_pager_indicator:[I

    .line 308
    return-void

    .line 335
    :array_0
    .array-data 4
        0x10100c4
        0x10100d4
        0x44010001    # 516.00006f
        0x44010003    # 516.0002f
        0x44010005    # 516.0003f
        0x44010006    # 516.00037f
        0x44010007    # 516.0004f
        0x44010008    # 516.0005f
        0x44010009    # 516.00055f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
