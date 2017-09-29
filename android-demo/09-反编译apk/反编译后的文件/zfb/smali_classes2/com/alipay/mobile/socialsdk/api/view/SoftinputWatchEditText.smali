.class public Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;
.super Lcom/alipay/mobile/commonui/widget/APEditText;
.source "SoftinputWatchEditText.java"


# instance fields
.field private a:Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText$OnDelKeyClickedListener;

.field private final b:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;->b:Ljava/util/Random;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;->b:Ljava/util/Random;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;->b:Ljava/util/Random;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;)Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText$OnDelKeyClickedListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;->a:Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText$OnDelKeyClickedListener;

    return-object v0
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/r;

    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 50
    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/r;-><init>(Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;Landroid/view/inputmethod/InputConnection;)V

    return-object v0
.end method

.method public setOnDelKeyClickedListener(Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText$OnDelKeyClickedListener;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;->a:Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText$OnDelKeyClickedListener;

    .line 27
    return-void
.end method

.method public setRandomBackgroundColor()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;->b:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;->b:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;->b:Ljava/util/Random;

    .line 44
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 43
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/SoftinputWatchEditText;->setBackgroundColor(I)V

    .line 45
    return-void
.end method
