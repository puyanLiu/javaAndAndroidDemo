.class final Lcom/alipay/android/phone/businesscommon/advertisement/impl/b;
.super Ljava/lang/Object;
.source "AdContent.java"

# interfaces
.implements Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;

.field private final synthetic b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/b;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/b;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iput-object p3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/b;->c:Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 119
    const-string/jumbo v0, "textView onJump!"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/b;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->actionUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/b;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->actionUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Ljava/lang/String;)I

    .line 123
    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a()Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;

    move-result-object v0

    .line 124
    const-string/jumbo v1, "AdClick"

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/b;->c:Ljava/lang/String;

    .line 125
    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/b;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v3, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    .line 123
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 130
    const-string/jumbo v0, "textView onCloseButtonClick!"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a()Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;

    move-result-object v0

    .line 132
    const-string/jumbo v1, "AdClose"

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/b;->c:Ljava/lang/String;

    .line 133
    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/b;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v3, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 138
    const-string/jumbo v0, "textView onAutoHide!"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 139
    return-void
.end method
