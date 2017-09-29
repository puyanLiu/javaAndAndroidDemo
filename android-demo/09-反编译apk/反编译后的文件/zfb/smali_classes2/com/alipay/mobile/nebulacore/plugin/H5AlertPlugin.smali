.class public Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5AlertPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5AlertPlugin"


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

.field private b:Lcom/alipay/mobile/h5container/api/H5Page;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 52
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string/jumbo v1, "showAlert"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 54
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "H5AlertPlugin"

    const-string/jumbo v1, "none params"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    :goto_0
    return v8

    .line 54
    :cond_1
    const-string/jumbo v1, "title"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "message"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    const-string/jumbo v1, "buttons"

    const/4 v6, 0x0

    invoke-static {v0, v1, v6}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    :goto_1
    :try_start_1
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-ne v1, v7, :cond_3

    :goto_2
    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$3;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$3;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->dismiss()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v6, Lcom/alipay/mobile/nebulacore/view/H5Alert;

    invoke-direct {v6, v2}, Lcom/alipay/mobile/nebulacore/view/H5Alert;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v6, v3}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->cancelable(Z)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->title(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->message(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->buttons([Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->listener(Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->show()Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_3
    const-string/jumbo v6, "H5AlertPlugin"

    invoke-static {v6, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 55
    :cond_4
    const-string/jumbo v1, "alert"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 56
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "message"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "button"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/alipay/mobile/nebulacore/R$string;->default_confirm:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    new-array v5, v8, [Ljava/lang/String;

    aput-object v0, v5, v3

    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$1;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->dismiss()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    :cond_6
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v6, Lcom/alipay/mobile/nebulacore/view/H5Alert;

    invoke-direct {v6, v2}, Lcom/alipay/mobile/nebulacore/view/H5Alert;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v6, v3}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->cancelable(Z)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->title(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->message(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->buttons([Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->listener(Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->show()Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    goto/16 :goto_0

    .line 57
    :cond_7
    const-string/jumbo v1, "confirm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "title"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "message"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "okButton"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget v0, Lcom/alipay/mobile/nebulacore/R$string;->default_confirm:I

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_8
    const-string/jumbo v7, "cancelButton"

    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    sget v1, Lcom/alipay/mobile/nebulacore/R$string;->default_cancel:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_9
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object v0, v6, v3

    aput-object v1, v6, v8

    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$2;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->dismiss()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    :cond_a
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/view/H5Alert;

    invoke-direct {v2, v1}, Lcom/alipay/mobile/nebulacore/view/H5Alert;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->cancelable(Z)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->title(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->message(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->buttons([Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->listener(Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->show()Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    goto/16 :goto_0

    .line 54
    :catch_1
    move-exception v1

    goto/16 :goto_3
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "showAlert"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string/jumbo v0, "alert"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string/jumbo v0, "confirm"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 40
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    .line 41
    return-void
.end method
