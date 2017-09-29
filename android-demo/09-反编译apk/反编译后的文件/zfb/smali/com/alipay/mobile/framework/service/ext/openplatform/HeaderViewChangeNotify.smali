.class public Lcom/alipay/mobile/framework/service/ext/openplatform/HeaderViewChangeNotify;
.super Ljava/lang/Object;
.source "HeaderViewChangeNotify.java"


# static fields
.field public static final ACTION_HEADERVIEW_DATA_CHANGE:I = 0x1


# instance fields
.field private action:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/HeaderViewChangeNotify;->action:I

    .line 12
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/HeaderViewChangeNotify;->action:I

    .line 13
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/HeaderViewChangeNotify;->action:I

    return v0
.end method

.method public setAction(I)V
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/HeaderViewChangeNotify;->action:I

    .line 21
    return-void
.end method
