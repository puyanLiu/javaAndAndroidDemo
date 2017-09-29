.class final Lcom/alipay/android/app/flybird/ui/window/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/window/u;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/u;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/w;->a:Lcom/alipay/android/app/flybird/ui/window/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/w;->a:Lcom/alipay/android/app/flybird/ui/window/u;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/u;->g:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->e(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Landroid/content/DialogInterface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 371
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/w;->a:Lcom/alipay/android/app/flybird/ui/window/u;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/u;->g:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-static {v0, p1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    .line 369
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/w;->a:Lcom/alipay/android/app/flybird/ui/window/u;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/u;->g:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/w;->a:Lcom/alipay/android/app/flybird/ui/window/u;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/u;->c:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    .line 370
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
