.class final Lcom/alipay/android/app/flybird/ui/window/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

.field final synthetic c:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/u;->g:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/u;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/window/u;->b:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    iput-object p4, p0, Lcom/alipay/android/app/flybird/ui/window/u;->c:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    iput-object p5, p0, Lcom/alipay/android/app/flybird/ui/window/u;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/android/app/flybird/ui/window/u;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/android/app/flybird/ui/window/u;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 342
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/u;->g:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->c()V

    .line 343
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/u;->g:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->f()V

    .line 344
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/u;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/u;->g:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "mini_error_title_default"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/u;->b:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    if-eqz v1, :cond_2

    .line 351
    new-instance v3, Lcom/alipay/android/app/flybird/ui/window/v;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/flybird/ui/window/v;-><init>(Lcom/alipay/android/app/flybird/ui/window/u;)V

    .line 360
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/u;->c:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    if-eqz v1, :cond_1

    .line 361
    new-instance v5, Lcom/alipay/android/app/flybird/ui/window/w;

    invoke-direct {v5, p0}, Lcom/alipay/android/app/flybird/ui/window/w;-><init>(Lcom/alipay/android/app/flybird/ui/window/u;)V

    .line 374
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/u;->g:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/u;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/u;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/window/u;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/widget/SystemDefaultDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    .line 376
    return-void

    :cond_1
    move-object v5, v0

    goto :goto_1

    :cond_2
    move-object v3, v0

    goto :goto_0
.end method
