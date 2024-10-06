module io.descoped.lds.server {
    requires io.descoped.lds.core;
    requires io.descoped.dynamic.config;
    requires org.slf4j;
    requires org.apache.commons.logging; // needed to use the solr search provider
    requires io.descoped.rawdata.api;
    requires io.descoped.service.provider.api;

    uses io.descoped.rawdata.api.RawdataClientInitializer;
}
