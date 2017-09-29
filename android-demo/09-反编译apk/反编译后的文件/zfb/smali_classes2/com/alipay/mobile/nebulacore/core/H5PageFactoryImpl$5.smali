.class Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$5;
.super Ljava/lang/Object;
.source "H5PageFactoryImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;

.field private final synthetic b:Landroid/os/Bundle;

.field private final synthetic c:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$5;->a:Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$5;->b:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$5;->c:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardVisible(Z)V
    .locals 4

    .prologue
    .line 138
    const-string/jumbo v0, "H5PageFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onKeyboardVisible "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    if-eqz p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$5;->b:Landroid/os/Bundle;

    .line 141
    const-string/jumbo v1, "publicId"

    const-string/jumbo v2, ""

    .line 140
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$5;->c:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 143
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 144
    const-string/jumbo v3, "publicId"

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v0, "url"

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$5;->c:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v1, "keyboardBecomeVisible"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 148
    :cond_0
    return-void
.end method
