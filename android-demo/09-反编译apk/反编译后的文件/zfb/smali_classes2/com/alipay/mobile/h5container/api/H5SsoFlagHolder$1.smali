.class Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder$1;
.super Ljava/util/ArrayList;
.source "H5SsoFlagHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    const-string/jumbo v0, "_T_WM=;expires=Mon, 17 Oct 2011 10:47:11 UTC;"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder$1;->add(Ljava/lang/Object;)Z

    .line 23
    const-string/jumbo v0, "HTTP_USER_AGENT_PARTNER_ALIPAY=;expires=Mon, 17 Oct 2011 10:47:11 UTC;"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder$1;->add(Ljava/lang/Object;)Z

    .line 24
    const-string/jumbo v0, "HTTP_USER_AGENT_ThirdParty=;expires=Mon, 17 Oct 2011 10:47:11 UTC;"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder$1;->add(Ljava/lang/Object;)Z

    .line 25
    const-string/jumbo v0, "SUB=;expires=Mon, 17 Oct 2011 10:47:11 UTC;"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder$1;->add(Ljava/lang/Object;)Z

    .line 26
    const-string/jumbo v0, "SUHB=;expires=Mon, 17 Oct 2011 10:47:11 UTC;"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder$1;->add(Ljava/lang/Object;)Z

    .line 27
    const-string/jumbo v0, "SSOLoginState=;expires=Mon, 17 Oct 2011 10:47:11 UTC;"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder$1;->add(Ljava/lang/Object;)Z

    .line 28
    const-string/jumbo v0, "WEIBOCN_WM=;expires=Mon, 17 Oct 2011 10:47:11 UTC;"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder$1;->add(Ljava/lang/Object;)Z

    .line 29
    const-string/jumbo v0, "M_WEIBOCN_PARAMS=;expires=Mon, 17 Oct 2011 10:47:11 UTC;"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder$1;->add(Ljava/lang/Object;)Z

    .line 1
    return-void
.end method
