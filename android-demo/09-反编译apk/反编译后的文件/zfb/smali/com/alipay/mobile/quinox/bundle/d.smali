.class final Lcom/alipay/mobile/quinox/bundle/d;
.super Ljava/lang/Object;
.source "BundleCfgUtil.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/bundle/e;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/d;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/d;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/bundle/d;->c:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/quinox/bundle/a;)Z
    .locals 2

    .prologue
    .line 175
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/d;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/thirdparty/common/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/d;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/d;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
