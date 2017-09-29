.class final Lcom/alipay/android/app/flybird/ui/window/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/window/u;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/u;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/v;->a:Lcom/alipay/android/app/flybird/ui/window/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/v;->a:Lcom/alipay/android/app/flybird/ui/window/u;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/u;->g:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/v;->a:Lcom/alipay/android/app/flybird/ui/window/u;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/u;->b:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    .line 356
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 357
    return-void
.end method
