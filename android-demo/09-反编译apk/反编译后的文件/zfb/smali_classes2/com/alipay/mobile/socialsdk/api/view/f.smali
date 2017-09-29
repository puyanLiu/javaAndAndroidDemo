.class final Lcom/alipay/mobile/socialsdk/api/view/f;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:Lcom/alipay/mobile/socialsdk/api/view/m;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;Landroid/view/View;Lcom/alipay/mobile/socialsdk/api/view/m;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/f;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/api/view/f;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/api/view/f;->c:Lcom/alipay/mobile/socialsdk/api/view/m;

    .line 1477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1480
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/f;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;I)V

    .line 1482
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/f;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setPressed(Z)V

    .line 1483
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/f;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1485
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/f;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/f;->c:Lcom/alipay/mobile/socialsdk/api/view/m;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/m;->run()V

    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/f;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->z(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    .line 1490
    return-void
.end method
