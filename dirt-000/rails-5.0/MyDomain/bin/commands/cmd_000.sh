#!/bin/bash

nav() {
	rails generate controller $1::Navigation \
		home about contact feedback calendar \
		popular recent news faq \
		index sitemap search results links \
		policy privacy copyright \
		subscribe \
		services products portfolio resources store blog gallery media
}

nav OneWolf
nav Ellestree
