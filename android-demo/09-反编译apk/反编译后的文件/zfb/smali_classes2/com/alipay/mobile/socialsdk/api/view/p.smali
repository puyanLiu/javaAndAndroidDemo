.class final Lcom/alipay/mobile/socialsdk/api/view/p;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V
    .locals 0

    .prologue
    .line 6229
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/p;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;B)V
    .locals 0

    .prologue
    .line 6229
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/p;-><init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 6232
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/p;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6236
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/p;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6237
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/p;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 6243
    :cond_0
    :goto_0
    return-void

    .line 6240
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/p;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->n(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    .line 6241
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/p;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->o(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    goto :goto_0
.end method
