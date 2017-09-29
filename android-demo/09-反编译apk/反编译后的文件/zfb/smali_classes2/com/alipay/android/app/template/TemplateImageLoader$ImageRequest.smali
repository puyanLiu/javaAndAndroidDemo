.class Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;
.super Ljava/lang/Object;
.source "TemplateImageLoader.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/TemplateImageLoader;

.field private b:Z

.field private c:Landroid/view/View;

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Lcom/flybird/ILayoutListener;


# direct methods
.method private constructor <init>(Lcom/alipay/android/app/template/TemplateImageLoader;)V
    .locals 1

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->a:Lcom/alipay/android/app/template/TemplateImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->b:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->c:Landroid/view/View;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->d:I

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->e:Z

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->f:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/app/template/TemplateImageLoader;B)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;-><init>(Lcom/alipay/android/app/template/TemplateImageLoader;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;I)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->d:I

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->c:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;Lcom/flybird/ILayoutListener;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->g:Lcom/flybird/ILayoutListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->e:Z

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Lcom/flybird/ILayoutListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->g:Lcom/flybird/ILayoutListener;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;Z)V
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->b:Z

    return-void
.end method

.method static synthetic c(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->b:Z

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->e:Z

    return v0
.end method
