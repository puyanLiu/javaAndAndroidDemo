.class final Lcom/alipay/mobile/socialsdk/contact/util/b;
.super Ljava/lang/Object;
.source "SnsLinkUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/alipay/mobile/common/share/ShareContent;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;Ljava/lang/String;Lcom/alipay/mobile/common/share/ShareContent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/util/b;->a:Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/util/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/contact/util/b;->c:Lcom/alipay/mobile/common/share/ShareContent;

    iput-object p4, p0, Lcom/alipay/mobile/socialsdk/contact/util/b;->d:Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/util/b;->a:Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/util/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/util/b;->c:Lcom/alipay/mobile/common/share/ShareContent;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/util/b;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->a(Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;Ljava/lang/String;Lcom/alipay/mobile/common/share/ShareContent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
