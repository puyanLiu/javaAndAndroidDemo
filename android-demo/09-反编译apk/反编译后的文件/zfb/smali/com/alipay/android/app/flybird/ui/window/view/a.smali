.class final Lcom/alipay/android/app/flybird/ui/window/view/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

.field final synthetic b:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/a;->b:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/view/a;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/a;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->b_()V

    .line 43
    return-void
.end method
