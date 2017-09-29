.class public final Lcom/alipay/android/app/widget/ResizeLayout;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/alipay/android/app/display/uielement/IElementFocusChanged;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ScrollView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Lcom/alipay/android/app/widget/m;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/widget/m;-><init>(Lcom/alipay/android/app/widget/ResizeLayout;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/app/widget/ResizeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/widget/ResizeLayout;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/app/widget/ResizeLayout;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/widget/ResizeLayout;Landroid/widget/ScrollView;Landroid/widget/EditText;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 26
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    aget v1, v0, v2

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->getLocationInWindow([I)V

    aget v0, v0, v2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/android/app/widget/ResizeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "msp_margin_default"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onFocusChange(I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alipay/android/app/widget/ResizeLayout;->a()V

    .line 54
    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 43
    if-eq p1, p3, :cond_0

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/widget/ResizeLayout;->a()V

    goto :goto_0
.end method

.method public final setScrollView(Landroid/widget/ScrollView;)V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setSmoothScrollingEnabled(Z)V

    .line 97
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/widget/ResizeLayout;->a:Ljava/lang/ref/WeakReference;

    .line 98
    return-void
.end method
