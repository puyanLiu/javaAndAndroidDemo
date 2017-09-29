.class Lcom/alipay/mobile/common/transportext/Transport$DftAlarm;
.super Ljava/lang/Object;
.source "Transport.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/Transport$Alarm;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/Transport;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transportext/Transport;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/Transport$DftAlarm;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transportext/Transport;Lcom/alipay/mobile/common/transportext/Transport$1;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/Transport$DftAlarm;-><init>(Lcom/alipay/mobile/common/transportext/Transport;)V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 197
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 198
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 199
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$DftAlarm;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/Transport;->access$000(Lcom/alipay/mobile/common/transportext/Transport;)Lcom/alipay/mobile/common/transportext/amnet/Notepad;

    move-result-object v1

    const-string/jumbo v2, "ERROR"

    const-string/jumbo v3, "-AMNET-MNG"

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/transportext/amnet/Notepad;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method
