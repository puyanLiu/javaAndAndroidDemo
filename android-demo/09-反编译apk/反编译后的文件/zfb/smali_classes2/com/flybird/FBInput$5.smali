.class Lcom/flybird/FBInput$5;
.super Ljava/lang/Object;
.source "FBInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flybird/FBInput;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:Z

.field private final synthetic d:Landroid/view/View;

.field private final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/flybird/FBInput;Landroid/view/View;ZLandroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBInput$5;->a:Lcom/flybird/FBInput;

    iput-object p2, p0, Lcom/flybird/FBInput$5;->b:Landroid/view/View;

    iput-boolean p3, p0, Lcom/flybird/FBInput$5;->c:Z

    iput-object p4, p0, Lcom/flybird/FBInput$5;->d:Landroid/view/View;

    iput-boolean p5, p0, Lcom/flybird/FBInput$5;->e:Z

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 436
    iget-object v4, p0, Lcom/flybird/FBInput$5;->b:Landroid/view/View;

    .line 437
    iget-boolean v0, p0, Lcom/flybird/FBInput$5;->c:Z

    if-nez v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/flybird/FBInput$5;->a:Lcom/flybird/FBInput;

    iget-object v1, p0, Lcom/flybird/FBInput$5;->d:Landroid/view/View;

    invoke-static {v0, v4, v1}, Lcom/flybird/FBInput;->a(Lcom/flybird/FBInput;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/flybird/FBInput$5;->a:Lcom/flybird/FBInput;

    iget-object v0, v0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBInput$5;->a:Lcom/flybird/FBInput;

    invoke-static {v1}, Lcom/flybird/FBInput;->b(Lcom/flybird/FBInput;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/flybird/FBInput$5;->a:Lcom/flybird/FBInput;

    iget-object v2, v2, Lcom/flybird/FBInput;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/android/app/template/util/UiUtil;->getKeyboardType(Ljava/lang/String;)Lcom/alipay/android/app/template/KeyboardType;

    move-result-object v2

    iget-object v3, p0, Lcom/flybird/FBInput$5;->d:Landroid/view/View;

    .line 441
    iget-boolean v5, p0, Lcom/flybird/FBInput$5;->e:Z

    const/4 v6, 0x0

    .line 440
    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/template/TemplateKeyboardService;->showKeyboard(Landroid/widget/EditText;Lcom/alipay/android/app/template/KeyboardType;Landroid/view/View;Landroid/view/View;ZI)Z

    .line 442
    return-void
.end method
