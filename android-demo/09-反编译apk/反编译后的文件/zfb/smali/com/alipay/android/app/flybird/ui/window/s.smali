.class final Lcom/alipay/android/app/flybird/ui/window/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

.field final synthetic b:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/s;->b:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/s;->a:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/s;->b:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->c(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/s;->b:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->c(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/s;->a:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->a(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/s;->b:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->c()V

    .line 273
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/s;->b:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->f()V

    .line 274
    return-void
.end method
