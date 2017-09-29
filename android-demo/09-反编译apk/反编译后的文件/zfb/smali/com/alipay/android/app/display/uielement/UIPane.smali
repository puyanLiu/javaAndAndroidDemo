.class public Lcom/alipay/android/app/display/uielement/UIPane;
.super Lcom/alipay/android/app/display/uielement/UIPanel;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/UIPanel;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/UIPanel;->a()Lcom/alipay/android/app/display/uielement/ElementType;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 36
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 37
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    return-void
.end method

.method protected final l()I
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "msp_panel_pane"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
