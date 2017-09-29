.class public Lcom/alipay/mobile/socialsdk/bizdata/model/UidLidMapping;
.super Ljava/lang/Object;
.source "UidLidMapping.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    daoClass = Lcom/alipay/mobile/socialsdk/bizdata/db/UidLidMappingDatabaseDaoImpl;
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x7da8d7105e481516L


# instance fields
.field public loginId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        id = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
