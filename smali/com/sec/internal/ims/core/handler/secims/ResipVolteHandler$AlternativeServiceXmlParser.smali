.class public Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeServiceXmlParser;
.super Ljava/lang/Object;
.source "ResipVolteHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlternativeServiceXmlParser"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseXml(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 2333
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;-><init>()V

    .line 2334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlternativeServiceXmlParser parseXml:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResipVolteHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    const-string v3, "//ims-3gpp/alternative-service"

    .line 2336
    invoke-interface {v1, v3}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v3

    const-string/jumbo v4, "type"

    .line 2337
    invoke-interface {v1, v4}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v4

    const-string/jumbo v5, "reason"

    .line 2338
    invoke-interface {v1, v5}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v5

    const-string v6, "action"

    .line 2339
    invoke-interface {v1, v6}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v1

    .line 2341
    new-instance v6, Lorg/xml/sax/InputSource;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 2342
    sget-object p0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v3, v6, p0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    if-nez p0, :cond_0

    const-string p0, "parseXml not found Node \'/ims-3gpp/alternative-service"

    .line 2344
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 2347
    :cond_0
    invoke-interface {v4, p0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2348
    invoke-interface {v5, p0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2349
    invoke-interface {v1, p0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\n"

    const-string v5, ""

    .line 2351
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 2353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseXml:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "initial-registration"

    .line 2355
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "initial-registration is found"

    .line 2356
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->INITIAL_REGISTRATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    iput-object p0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mAction:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    .line 2358
    iput-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mType:Ljava/lang/String;

    .line 2359
    iput-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mReason:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "emergency-registration"

    .line 2360
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2361
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->EMERGENCY_REGISTRATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    iput-object p0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mAction:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    .line 2362
    iput-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mType:Ljava/lang/String;

    .line 2363
    iput-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mReason:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p0, "emergency"

    .line 2364
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 2365
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->EMERGENCY:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    iput-object p0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mAction:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    .line 2366
    iput-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mType:Ljava/lang/String;

    .line 2367
    iput-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mReason:Ljava/lang/String;

    :cond_3
    :goto_0
    return-object v0
.end method
