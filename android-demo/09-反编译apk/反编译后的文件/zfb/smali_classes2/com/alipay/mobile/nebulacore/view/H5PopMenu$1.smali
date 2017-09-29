.class Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;
.super Ljava/lang/Object;
.source "H5PopMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/view/H5PopMenu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->a:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->a:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->c:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->a:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->a:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 324
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 325
    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 341
    :goto_0
    return-void

    .line 328
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 330
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->a:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    .line 331
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 332
    const-string/jumbo v2, "name"

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string/jumbo v2, "tag"

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->a:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->d:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 335
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->a:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->e:Lcom/alipay/mobile/nebulacore/view/TitleProvider;

    if-eqz v2, :cond_2

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->a:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->e:Lcom/alipay/mobile/nebulacore/view/TitleProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/view/TitleProvider;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 338
    :cond_2
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string/jumbo v0, "url"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->a:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->d:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->a:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->d:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string/jumbo v2, "h5ToolbarMenuBt"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method
