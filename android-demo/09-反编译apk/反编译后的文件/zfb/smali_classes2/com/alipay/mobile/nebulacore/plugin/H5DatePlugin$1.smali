.class Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;
.super Ljava/lang/Object;
.source "H5DatePlugin.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

.field private final synthetic b:Ljava/util/Calendar;

.field private final synthetic c:Ljava/util/Calendar;

.field private final synthetic d:Lcom/alibaba/fastjson/JSONObject;

.field private final synthetic e:Z

.field private final synthetic f:Lcom/alipay/mobile/h5container/api/H5Event;

.field private final synthetic g:Ljava/util/Calendar;

.field private final synthetic h:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field private final synthetic i:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/alibaba/fastjson/JSONObject;ZLcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->b:Ljava/util/Calendar;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->c:Ljava/util/Calendar;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->d:Lcom/alibaba/fastjson/JSONObject;

    iput-boolean p5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->e:Z

    iput-object p6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->f:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->g:Ljava/util/Calendar;

    iput-object p8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->h:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iput-boolean p9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->i:Z

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 8

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x1

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->b:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->c:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-gt v0, p2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 112
    :cond_0
    :goto_0
    add-int/lit8 v0, p3, 0x1

    if-ge v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 113
    :goto_1
    if-ge p4, v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->d:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v3, "date"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->e:Z

    if-eqz v0, :cond_4

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->f:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->g:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->b:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->c:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->h:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-boolean v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->i:Z

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->d:Lcom/alibaba/fastjson/JSONObject;

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZLcom/alibaba/fastjson/JSONObject;)V

    .line 120
    :goto_3
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->b:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-lt v0, p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->b:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    goto/16 :goto_0

    .line 112
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 113
    :cond_3
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->h:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->d:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_3
.end method
