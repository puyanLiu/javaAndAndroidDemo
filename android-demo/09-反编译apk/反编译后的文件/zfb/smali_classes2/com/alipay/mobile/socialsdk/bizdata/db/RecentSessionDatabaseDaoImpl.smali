.class public Lcom/alipay/mobile/socialsdk/bizdata/db/RecentSessionDatabaseDaoImpl;
.super Lcom/j256/ormlite/dao/BaseDaoImpl;
.source "RecentSessionDatabaseDaoImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/j256/ormlite/dao/BaseDaoImpl",
        "<",
        "Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/dao/BaseDaoImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    .line 18
    return-void
.end method
