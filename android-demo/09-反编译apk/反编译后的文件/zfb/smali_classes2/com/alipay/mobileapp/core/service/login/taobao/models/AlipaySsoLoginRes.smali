.class public Lcom/alipay/mobileapp/core/service/login/taobao/models/AlipaySsoLoginRes;
.super Ljava/lang/Object;
.source "AlipaySsoLoginRes.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x54bca575d79b79beL


# instance fields
.field public autoLoginToken:Ljava/lang/String;

.field public ecode:Ljava/lang/String;

.field public loginCookie:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public loginTime:J

.field public memo:Ljava/lang/String;

.field public nick:Ljava/lang/String;

.field public resultStatus:I

.field public sid:Ljava/lang/String;

.field public success:Z

.field public topSession:Ljava/lang/String;

.field public userId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileapp/core/service/login/taobao/models/AlipaySsoLoginRes;->loginCookie:Ljava/util/List;

    return-void
.end method
