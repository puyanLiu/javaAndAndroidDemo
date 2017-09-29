.class public Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;
.super Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;
.source "SearchItemModel.java"


# static fields
.field private static e:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;-><init>()V

    .line 24
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->c:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    sput-object p0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->e:Ljava/lang/String;

    .line 12
    return-void
.end method
