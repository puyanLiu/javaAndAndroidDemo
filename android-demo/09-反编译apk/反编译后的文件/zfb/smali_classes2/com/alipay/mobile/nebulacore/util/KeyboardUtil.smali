.class public Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;
.super Ljava/lang/Object;
.source "KeyboardUtil.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "KeyboardUtil"

.field public static mVisible:Z


# instance fields
.field private a:I

.field private b:Landroid/view/View;

.field private c:Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sput-boolean v0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mVisible:Z

    .line 27
    iput v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->a:I

    .line 28
    if-nez p1, :cond_0

    .line 37
    :goto_0
    return-void

    .line 32
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 33
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->b:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string/jumbo v1, "KeyboardUtil"

    const-string/jumbo v2, "exception detail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 51
    iget v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->a:I

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->a:I

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->c:Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 62
    sget-boolean v1, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mVisible:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->a:I

    add-int/lit8 v2, v0, 0x64

    if-le v1, v2, :cond_2

    .line 63
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mVisible:Z

    .line 64
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->c:Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;

    sget-boolean v2, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mVisible:Z

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;->onKeyboardVisible(Z)V

    .line 65
    iput v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->a:I

    goto :goto_0

    .line 66
    :cond_2
    sget-boolean v1, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mVisible:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->a:I

    add-int/lit8 v2, v0, -0x64

    if-ge v1, v2, :cond_0

    .line 67
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mVisible:Z

    .line 68
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->c:Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;

    sget-boolean v2, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mVisible:Z

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;->onKeyboardVisible(Z)V

    .line 69
    iput v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->a:I

    goto :goto_0
.end method

.method public setListener(Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;)V
    .locals 1

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->c:Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->c:Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
