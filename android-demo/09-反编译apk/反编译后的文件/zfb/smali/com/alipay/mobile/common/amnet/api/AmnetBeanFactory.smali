.class public final Lcom/alipay/mobile/common/amnet/api/AmnetBeanFactory;
.super Ljava/lang/Object;
.source "AmnetBeanFactory.java"


# static fields
.field private static final AMNET_MANAGER_NAME:Ljava/lang/String; = "com.alipay.mobile.common.amnet.biz.AmnetManagerImpl"

.field private static final TAG:Ljava/lang/String; = "AmnetBeanFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;
    .locals 2

    .prologue
    .line 20
    :try_start_0
    const-string/jumbo v0, "com.alipay.mobile.common.amnet.biz.AmnetManagerImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/api/AmnetManager;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 29
    :goto_0
    return-object v0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    const-string/jumbo v1, "AmnetBeanFactory"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 24
    :catch_1
    move-exception v0

    .line 25
    const-string/jumbo v1, "AmnetBeanFactory"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 26
    :catch_2
    move-exception v0

    .line 27
    const-string/jumbo v1, "AmnetBeanFactory"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
