.class final Lcom/alipay/mobile/socialsdk/contact/util/d;
.super Ljava/lang/Object;
.source "SnsLinkUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/util/c;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/alipay/mobile/common/share/ShareContent;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/util/c;Ljava/lang/String;Lcom/alipay/mobile/common/share/ShareContent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/util/d;->a:Lcom/alipay/mobile/socialsdk/contact/util/c;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/util/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/contact/util/d;->c:Lcom/alipay/mobile/common/share/ShareContent;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/util/d;->a:Lcom/alipay/mobile/socialsdk/contact/util/c;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/util/c;->a(Lcom/alipay/mobile/socialsdk/contact/util/c;)Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/util/d;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/util/d;->c:Lcom/alipay/mobile/common/share/ShareContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/util/d;->c:Lcom/alipay/mobile/common/share/ShareContent;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareContent;->getExtData()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->a(Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
