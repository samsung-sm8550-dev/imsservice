.class public Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$InfoXmlParser;
.super Ljava/lang/Object;
.source "ResipVolteHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoXmlParser"
.end annotation


# static fields
.field private static sInstance:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$InfoXmlParser;


# instance fields
.field mXPath:Ljavax/xml/xpath/XPath;


# direct methods
.method static bridge synthetic -$$Nest$mparseInfoXml(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$InfoXmlParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$InfoXmlParser;->parseInfoXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$InfoXmlParser;->init()V

    return-void
.end method

.method public static getInstance()Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$InfoXmlParser;
    .locals 1

    .line 375
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$InfoXmlParser;->sInstance:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$InfoXmlParser;

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$InfoXmlParser;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$InfoXmlParser;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$InfoXmlParser;->sInstance:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$InfoXmlParser;

    .line 378
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$InfoXmlParser;->sInstance:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$InfoXmlParser;

    return-object v0
.end method

.method private init()V
    .locals 1

    .line 386
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$InfoXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    return-void
.end method

.method private parseInfoXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "oneShot"

    const-string v1, "none"

    const-string v2, "(\r\n|\r|\n|\n\r)"

    const-string v3, ""

    .line 391
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 394
    :try_start_0
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 395
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 396
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$InfoXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v2, "//requestForLocationInformation/*"

    sget-object v3, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {p0, v2, p1, v3}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/NodeList;

    const/4 p1, 0x0

    .line 397
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 398
    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 404
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResipVolteHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v1
.end method
